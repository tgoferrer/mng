package com.use3w.mng.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.Duration;
import java.time.LocalDateTime;

@Entity
public class Service {
    @Id
    @GeneratedValue
    private Integer serviceId;
    private String serviceName;
    private String serviceCategory;
    private String serviceDescription;
    private BigDecimal servicePrice = BigDecimal.ZERO;
    private Duration serviceHours;
    private LocalDateTime serviceDateStart;
    private LocalDateTime serviceDateEnd;
    private String serviceStatus;
    private Employee employee;

    /**
     * @deprecated hibernate only
     */
    public Service() {
    }

    public Service(String serviceName, String serviceDescription, BigDecimal servicePrice) {
        this.serviceName = serviceName;
        this.serviceDescription = serviceDescription;
        this.servicePrice = servicePrice;
    }

    public Integer getServiceId() {
        return serviceId;
    }

    public void setServiceId(Integer serviceId) {
        this.serviceId = serviceId;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getServiceCategory() {
        return serviceCategory;
    }

    public void setServiceCategory(String serviceCategory) {
        this.serviceCategory = serviceCategory;
    }

    public String getServiceDescription() {
        return serviceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        this.serviceDescription = serviceDescription;
    }

    public BigDecimal getServicePrice() {
        return servicePrice.setScale(2, RoundingMode.HALF_UP);
    }

    public void setServicePrice(BigDecimal servicePrice) {
        this.servicePrice = servicePrice;
    }

    public Duration getServiceHours() {
        return serviceHours;
    }

    public void setServiceHours(Duration serviceHours) {
        this.serviceHours = serviceHours;
    }

    public LocalDateTime getServiceDateStart() {
        return serviceDateStart;
    }

    public void setServiceDateStart(LocalDateTime serviceDateStart) {
        this.serviceDateStart = serviceDateStart;
    }

    public LocalDateTime getServiceDateEnd() {
        return serviceDateEnd;
    }

    public void setServiceDateEnd(LocalDateTime serviceDateEnd) {
        this.serviceDateEnd = serviceDateEnd;
    }

    public String getServiceStatus() {
        return serviceStatus;
    }

    public void setServiceStatus(String serviceStatus) {
        this.serviceStatus = serviceStatus;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
}
