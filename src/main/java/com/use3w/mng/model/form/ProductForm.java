package com.use3w.mng.model.form;

import com.use3w.mng.dao.SupplierDao;
import com.use3w.mng.model.Product;
import com.use3w.mng.model.Supplier;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

public class ProductForm {

    private Integer productFormId;
    private Integer productId;
    @NotEmpty(message = "Ops... é necessário um <b>nome</b> para o produto que deseja adicionar!")
    private String productName;
    @NotEmpty(message = "Ops... Parece que alguém esqueceu a <b>categoria</b> do produto!")
    private String productCategory;
    @NotEmpty(message = "Ops... Parece que alguém esqueceu a <b>descrição</b> do produto!")
    private String productDescription;
    private BigDecimal productPrice = BigDecimal.ZERO;
    private boolean productAvailable = false;
    @NotNull(message = "Ops... Parece que você esqueceu de mim!")
    private int productUnitInStock;
    @NotEmpty(message = "Ops! Parece que alguém esqueceu o <b>fabricante</b> do produto!")
    private String productManufacturer;
    @NotNull(message = "Ops... Parece que você esqueceu de escolher um <b>fornecedor</b>!")
    private Integer supplierId;

    /**
     * @deprecated hibernate only
     */
    public ProductForm() {
    }

    public ProductForm(String productName, String productCategory, String productDescription, BigDecimal productPrice, boolean productAvailable, int productUnitInStock, String productManufacturer, Integer supplierId) {
        this.productName = productName;
        this.productCategory = productCategory;
        this.productDescription = productDescription;
        this.productPrice = productPrice;
        this.productAvailable = productAvailable;
        this.productUnitInStock = productUnitInStock;
        this.productManufacturer = productManufacturer;
        this.supplierId = supplierId;
    }

    public Integer getProductFormId() {
        return productFormId;
    }

    public void setProductFormId(Integer productFormId) {
        this.productFormId = productFormId;
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
        return productPrice;
    }

    public void setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
    }

    public boolean isProductAvailable() {
        return productAvailable;
    }

    public void setProductAvailable(boolean productAvailable) {
        this.productAvailable = productAvailable;
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

    public Integer getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }

    public Product toProduct(SupplierDao supplierDao) {


        Supplier supplier = supplierDao.findOne(supplierId);

        Product product = new Product(this.productName, this.productCategory, this.productDescription, this.productPrice, this.productAvailable, this.productUnitInStock, this.productManufacturer, supplier);

        product.setProductId(productFormId);

        return product;
    }


}
