package com.use3w.mng.model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;


@Entity
public class Product {

    @Id
    @GeneratedValue
    private Integer productId;
    private String productName;
    private String productCategory;
    private String productDescription;
    private BigDecimal productPrice = BigDecimal.ZERO;
    private String productStatus;
    private int productUnitInStock = 0;
    private String productManufacturer;

    @OneToMany
    private List<Supplier> productSuppliers;

    /**
     * @deprecated hibernate only
     */
    public Product() {
    }

    public Product(String productName, BigDecimal productPrice, int productUnitInStock) {
        this.productName = productName;
        this.productPrice = productPrice;
        this.productUnitInStock = productUnitInStock;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public BigDecimal getProductPrice() {
        return productPrice.setScale(2, RoundingMode.HALF_UP);
    }

    public void setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public int getProductUnitInStock() {
        return productUnitInStock;
    }

    public void setProductUnitInStock(int productUnitInStock) {
        this.productUnitInStock = productUnitInStock;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public List<Supplier> getProductSuppliers() {
        return productSuppliers;
    }

    public void setProductSuppliers(List<Supplier> productSuppliers) {
        this.productSuppliers = productSuppliers;
    }
}
