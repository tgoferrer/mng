package com.use3w.mng.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Supplier {

    @Id
    private String supplierCNPJ;
    @GeneratedValue
    private int supplierInternalCode;
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

    public Supplier(String supplierCNPJ, String supplierName, String supplierEmail) {
        this.supplierCNPJ = supplierCNPJ;
        this.supplierName = supplierName;
        this.supplierEmail = supplierEmail;
    }

    public String getSupplierCNPJ() {
        return supplierCNPJ;
    }

    public void setSupplierCNPJ(String supplierCNPJ) {
        this.supplierCNPJ = supplierCNPJ;
    }

    public int getSupplierInternalCode() {
        return supplierInternalCode;
    }

    public void setSupplierInternalCode(int supplierInternalCode) {
        this.supplierInternalCode = supplierInternalCode;
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
