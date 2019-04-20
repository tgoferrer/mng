package com.use3w.mng.controller;

import com.use3w.mng.dao.SupplierDao;
import com.use3w.mng.model.Supplier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class SupplierController {

    @Autowired
    private SupplierDao supplierDao;

    @GetMapping("/supplier/supplierNew")
    public ModelAndView form(Supplier supplier) {

        ModelAndView modelAndView = new ModelAndView("supplier/supplierNew");

        modelAndView.addObject("supplier", supplier);

        return modelAndView;
    }
//
//    @PostMapping("/supplier/supplierNew")
//    @Transactional
//    public ModelAndView save(@Valid SupplierForm supplierForm, BindingResult result) {
//
//        if (result.hasErrors()) {
//            return form(Optional.ofNullable(supplierForm.getSupplierFormId()), supplierForm);
//        }
//
//        filmeDao.save(filme);
//
//        ModelAndView view = new ModelAndView("redirect:/admin/filmes");
//
//        return view;
//}


}
