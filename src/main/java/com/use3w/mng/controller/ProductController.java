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
    public ModelAndView getProductsAction(boolean deleteProductAlert) {

        ModelAndView modelAndView = new ModelAndView("product/productList");

        modelAndView.addObject("products", productDao.findAll());
        modelAndView.addObject("deleteProductAlert", deleteProductAlert);

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
    public ModelAndView form(ProductForm productForm, String viewName) {

        ModelAndView modelAndView = new ModelAndView(viewName);

        modelAndView.addObject("suppliers", supplierDao.findAll());
        modelAndView.addObject("productForm", productForm);

        return modelAndView;
    }

    @PostMapping("/product/productNew")
    @Transactional
    public ModelAndView save(@Valid ProductForm productForm, BindingResult result) {

        String viewName = "/product/productNew";

        if (result.hasErrors()) {
            return form(productForm, viewName);
        }

        Product product = productForm.toProduct(supplierDao);

        productDao.save(product);

        ModelAndView modelAndView = new ModelAndView("redirect:/product/productList/productView/" + product.getProductId());

        boolean newProductAlert = true;

        modelAndView.addObject("product", product);
        modelAndView.addObject("newProductAlert", newProductAlert);
        modelAndView.addObject("viewName", viewName);

        return modelAndView;

    }

    @GetMapping("/product/productView/{productId}/update")
    public ModelAndView toUpdate(@PathVariable("productId") Integer productId) {

        Product product = productDao.findOne(productId);
        Supplier supplier = supplierDao.findOne(product.getProductSupplier().getSupplierId());
        String viewName = "product/productUpdate";

        ProductForm productForm = product.toProductForm();

        ModelAndView modelAndView = new ModelAndView(viewName);

        modelAndView.addObject("supplier", supplier);
        modelAndView.addObject("suppliers", supplierDao.findAll());
        modelAndView.addObject("productForm", productForm);
        modelAndView.addObject("product", product);
        modelAndView.addObject("viewName", viewName);


        return modelAndView;

    }

    @PostMapping("/product/productView/{productId}/delete")
    @Transactional
    public ModelAndView delete(@PathVariable("productId") Integer productId) {
        boolean deleteProductAlert;
        ModelAndView modelAndView = new ModelAndView("redirect:/product/productList");
        try {
            productDao.delete(productId);
            deleteProductAlert = true;
        } catch (Exception e) {
            deleteProductAlert = false;
        }
        modelAndView.addObject("deleteProductAlert", deleteProductAlert);

        return modelAndView;

    }


    @PostMapping("/product/productView/{productId}/update")
    @Transactional
    public ModelAndView update(@Valid ProductForm productForm,  BindingResult result, Product product) {

        String viewName = "product/productUpdate";

        System.out.println(1);
        if (result.hasErrors()) {
            System.out.println(2);
            return form(productForm, viewName);
        }
        System.out.println(3);
        Product product1 = productForm.toProduct(supplierDao);
        System.out.println(4);
        productDao.update(product, product1);
        System.out.println(5);
        boolean newProductAlert = true;

        ModelAndView modelAndView = new ModelAndView("redirect:/product/productList/productView/" + product.getProductId());

        modelAndView.addObject("product", product);
        System.out.println(6);
        modelAndView.addObject("newProductAlert", newProductAlert);
        System.out.println(7);

        return modelAndView;

    }


}

