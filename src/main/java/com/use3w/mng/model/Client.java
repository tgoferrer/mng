package com.use3w.mng.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Client {

    @Id
    private String clientCPF;
    private String clientName;
    private String clientAddress1;
    private String clientAddress2;
    private String clientCPE;
    private String clientPhone;
    private String clientEmail;

    /**
     * @deprecated hibernate only
     */
    public Client() {
    }

    public Client(String clientCPF, String clientName, String clientEmail) {
        this.clientCPF = clientCPF;
        this.clientName = clientName;
        this.clientEmail = clientEmail;
    }

    public String getClientCPF() {
        return clientCPF;
    }

    public void setClientCPF(String clientCPF) {
        this.clientCPF = clientCPF;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getClientAddress1() {
        return clientAddress1;
    }

    public void setClientAddress1(String clientAddress1) {
        this.clientAddress1 = clientAddress1;
    }

    public String getClientAddress2() {
        return clientAddress2;
    }

    public void setClientAddress2(String clientAddress2) {
        this.clientAddress2 = clientAddress2;
    }

    public String getClientCPE() {
        return clientCPE;
    }

    public void setClientCPE(String clientCPE) {
        this.clientCPE = clientCPE;
    }

    public String getClientPhone() {
        return clientPhone;
    }

    public void setClientPhone(String clientPhone) {
        this.clientPhone = clientPhone;
    }

    public String getClientEmail() {
        return clientEmail;
    }

    public void setClientEmail(String clientEmail) {
        this.clientEmail = clientEmail;
    }
}
