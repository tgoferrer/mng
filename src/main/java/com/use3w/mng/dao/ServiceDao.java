package com.use3w.mng.dao;

import com.use3w.mng.model.Client;
import com.use3w.mng.model.Service;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class ServiceDao {
    @PersistenceContext
    private EntityManager em;


    public void save(Service service) {
        em.persist(service);
    }

    public Service findOne(Integer serviceId) {
        return em.find(Service.class, serviceId);
    }


    public List<Service> findAll() {
        return em.createQuery("select s from Service s", Service.class).getResultList();
    }

    public void delete(Integer serviceId) {
        em.remove(findOne(serviceId));
    }
}
