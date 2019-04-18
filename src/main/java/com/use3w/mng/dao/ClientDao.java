package com.use3w.mng.dao;

import com.use3w.mng.model.Client;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class ClientDao {

    @PersistenceContext
    private EntityManager em;


    public void save(Client client) {
        em.persist(client);
    }

    public Client findOne(String clientCPF) {
        return em.find(Client.class, clientCPF);
    }


    public List<Client> findAll() {
        return em.createQuery("select c from Client c", Client.class).getResultList();
    }

    public void delete(String clientCPF) {
        em.remove(findOne(clientCPF));
    }


}
