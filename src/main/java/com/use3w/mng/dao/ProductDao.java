package com.use3w.mng.dao;

import com.use3w.mng.model.Product;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class ProductDao {

    @PersistenceContext
    private EntityManager em;


    public void save(Product product) {
        em.persist(product);
    }

    public Product findOne(Integer productId) {
        return em.find(Product.class, productId);
    }


    public List<Product> findAll() {
        return em.createQuery("select p from Product p", Product.class).getResultList();
    }

    public void delete(Integer productId) {
        em.remove(findOne(productId));
    }

}
