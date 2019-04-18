package com.use3w.mng.controller;

import com.use3w.mng.dao.ClientDao;
import com.use3w.mng.model.Client;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Controller
public class ClientController {

    @Autowired
    private ClientDao clientDao;

    @Transactional
    public void save(Client client) {
        clientDao.save(client);
    }

    @Transactional(readOnly = true)
    public List<Client> clientList() {
        return clientDao.findAll();
    }

}
