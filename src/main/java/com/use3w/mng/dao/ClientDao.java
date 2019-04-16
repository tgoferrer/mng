package com.use3w.mng.dao;

import com.use3w.mng.model.Client;

import java.util.List;

public interface ClientDao {

    void save(Client client);

    Client findOne(String clientCPF);

    List<Client> findAll();

    void delete(String clientCPF);
}
