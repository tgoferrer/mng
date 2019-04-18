package com.use3w.mng.controller;

import com.use3w.mng.dao.ProductDao;
import com.use3w.mng.dao.SupplierDao;
import com.use3w.mng.model.Product;
import com.use3w.mng.model.Supplier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {

    @Autowired
    private ProductDao productDao;

    @Autowired
    private SupplierDao supplierDao;

    @GetMapping("/productList")
    public ModelAndView getProductsAction() {

        ModelAndView modelAndView = new ModelAndView("productList");

        modelAndView.addObject("products", productDao.findAll());

        return modelAndView;
    }

    @GetMapping("/productList/productView/{productId}-{supplierId}")
    public ModelAndView productView(@PathVariable("productId") Integer productId,
                                    @PathVariable("supplierId") Integer supplierId) {
        ModelAndView modelAndView = new ModelAndView("productView");

        Product product = productDao.findOne(productId);

        Supplier supplier = supplierDao.findOne(supplierId);

        modelAndView.addObject("product", product);
        modelAndView.addObject("supplier", supplier);


        return modelAndView;

    }


}

