package com.use3w.mng.controller;

import com.use3w.mng.dao.ProductDao;
import com.use3w.mng.dao.SupplierDao;
import com.use3w.mng.model.Product;
import com.use3w.mng.model.Supplier;
import com.use3w.mng.model.form.ProductForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;


@Controller
public class ProductController {

    @Autowired
    private ProductDao productDao;

    @Autowired
    private SupplierDao supplierDao;

    @GetMapping("/product/productList")
    public ModelAndView getProductsAction() {

        ModelAndView modelAndView = new ModelAndView("product/productList");

        modelAndView.addObject("products", productDao.findAll());

        return modelAndView;
    }

    @GetMapping("product/productList/productView/{productId}")
    public ModelAndView productView(@PathVariable("productId") Integer productId, boolean newProductAlert) {

        ModelAndView modelAndView = new ModelAndView("product/productView");

        Product product = productDao.findOne(productId);
        Supplier supplier = supplierDao.findOne(product.getProductSupplier().getSupplierId());


        modelAndView.addObject("product", product);
        modelAndView.addObject("supplier", supplier);
        modelAndView.addObject("newProductAlert", newProductAlert);

        return modelAndView;

    }

    @GetMapping("/product/productNew")
    public ModelAndView form(ProductForm productForm) {

        ModelAndView modelAndView = new ModelAndView("product/productNew");

        modelAndView.addObject("suppliers", supplierDao.findAll());
        modelAndView.addObject("productForm", productForm);

        return modelAndView;
    }

    @PostMapping("/product/productNew")
    @Transactional
    public ModelAndView save(@Valid ProductForm productForm, BindingResult result) {

        if (result.hasErrors()) {
            return form(productForm);
        }

        Product product = productForm.toProduct(supplierDao);

        productDao.save(product);

        boolean newProductAlert = true;

        ModelAndView modelAndView = new ModelAndView("redirect:/product/productList/productView/" + product.getProductId());

        modelAndView.addObject("newProductAlert",newProductAlert);

        return modelAndView;

    }


}

