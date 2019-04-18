package com.use3w.mng.dao;

import com.use3w.mng.model.Client;
import com.use3w.mng.model.Supplier;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class SupplierDao {

    @PersistenceContext
    private EntityManager em;


    public void save(Supplier supplier) {
        em.persist(supplier);
    }

    public Supplier findOne(String supplierCNPJ) {
        return em.find(Supplier.class, supplierCNPJ);
    }


    public List<Supplier> findAll() {
        return em.createQuery("select sp from Supplier sp", Supplier.class).getResultList();
    }

    public void delete(String supplierCNPJ) {
        em.remove(findOne(supplierCNPJ));
    }
}
