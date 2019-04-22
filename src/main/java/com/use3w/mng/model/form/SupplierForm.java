package com.use3w.mng.model.form;

import com.use3w.mng.model.Supplier;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;

public class SupplierForm {

    private Integer supplierFormId;
    @NotEmpty(message = "Id do fornecedor não foi gerado")
    private Integer supplierId;
    @NotEmpty(message = "É necessário inserir o CNPJ válido para o fornecedor")
    private String supplierCNPJ;
    @NotEmpty(message = "É necessário inserir um nome para o fornecedor")
    private String supplierName;
    private String supplierAddress;
    private String supplierCPE;
    private String supplierPhone;
    private String supplierEmail;

    public Integer getSupplierFormId() {
        return supplierFormId;
    }

    public void setSupplierFormId(Integer supplierFormId) {
        this.supplierFormId = supplierFormId;
    }

    public Integer getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }

    public String getSupplierCNPJ() {
        return supplierCNPJ;
    }

    public void setSupplierCNPJ(String supplierCNPJ) {
        this.supplierCNPJ = supplierCNPJ;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getSupplierAddress() {
        return supplierAddress;
    }

    public void setSupplierAddress(String supplierAddress) {
        this.supplierAddress = supplierAddress;
    }

    public String getSupplierCPE() {
        return supplierCPE;
    }

    public void setSupplierCPE(String supplierCPE) {
        this.supplierCPE = supplierCPE;
    }

    public String getSupplierPhone() {
        return supplierPhone;
    }

    public void setSupplierPhone(String supplierPhone) {
        this.supplierPhone = supplierPhone;
    }

    public String getSupplierEmail() {
        return supplierEmail;
    }

    public void setSupplierEmail(String supplierEmail) {
        this.supplierEmail = supplierEmail;
    }

    public Supplier toSupplier() {

        Supplier supplier = new Supplier(this.supplierCNPJ, this.supplierId,this.supplierName, this.supplierEmail);

        supplier.setSupplierId(supplierFormId);


        return supplier;
    }

}
