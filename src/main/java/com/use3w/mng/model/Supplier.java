package com.use3w.mng.model;

import org.hibernate.validator.constraints.br.CNPJ;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Supplier {

    @Id
    @GeneratedValue
    private Integer supplierId;
    @CNPJ
    private String supplierCNPJ;
    private String supplierName;
    private String supplierAddress;
    private String supplierCPE;
    private String supplierPhone;
    private String supplierEmail;

    /**
     * @deprecated hibernate only
     */
    public Supplier() {
    }

    public Supplier(String supplierCNPJ, Integer supplierId,String supplierName, String supplierEmail) {
        this.supplierCNPJ = supplierCNPJ;
        this.supplierId = supplierId;
        this.supplierName = supplierName;
        this.supplierEmail = supplierEmail;
    }

    public String getSupplierCNPJ() {
        return supplierCNPJ;
    }

    public void setSupplierCNPJ(String supplierCNPJ) {
        this.supplierCNPJ = supplierCNPJ;
    }

    public int getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
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
}
