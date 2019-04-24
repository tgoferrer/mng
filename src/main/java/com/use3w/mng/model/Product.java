package com.use3w.mng.model;

import com.use3w.mng.dao.SupplierDao;
import com.use3w.mng.model.form.ProductForm;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.math.BigDecimal;
import java.math.RoundingMode;


@Entity
public class Product {

    @Id
    @GeneratedValue
    private Integer productId;
    private String productName;
    private String productCategory;
    private String productDescription;
    private BigDecimal productPrice = BigDecimal.ZERO;
    private boolean productAvailable;
    private int productUnitInStock = 0;
    private String productManufacturer;
    @ManyToOne
    private Supplier productSupplier;

    /**
     * @deprecated hibernate only
     */
    public Product() {
    }

    public Product(String productName, String productCategory, String productDescription, BigDecimal productPrice, boolean productAvailable, int productUnitInStock, String productManufacturer, Supplier productSupplier) {
        this.productName = productName;
        this.productCategory = productCategory;
        this.productDescription = productDescription;
        this.productPrice = productPrice;
        this.productAvailable = productAvailable;
        this.productUnitInStock = productUnitInStock;
        this.productManufacturer = productManufacturer;
        this.productSupplier = productSupplier;
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

    public Supplier getProductSupplier() {
        return productSupplier;
    }

    public void setProductSupplier(Supplier productSupplier) {
        this.productSupplier = productSupplier;
    }

    public boolean isProductAvailable() {
        return productAvailable;
    }

    public void setProductAvailable(boolean productAvailable) {
        this.productAvailable = productAvailable;
    }

    public ProductForm toProductForm() {

        ProductForm productForm = new ProductForm(this.productName, this.productCategory, this.productDescription,
                this.productPrice, this.productAvailable, this.productUnitInStock, this.productManufacturer,
                this.productSupplier.getSupplierId());

        System.out.println("Antes de setar o productFormId ="+productForm.getProductId());

        productForm.setProductId(this.productId);

        System.out.println("Depois de setar o productFormId ="+productForm.getProductId());

        return productForm;
    }
}
