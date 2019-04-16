package com.use3w.mng.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.math.RoundingMode;

@Entity
public class Employee {

    @GeneratedValue
    private int employeeInternalCode;
    @Id
    private String employeeCPF;
    private String employeeName;
    private String employeeAddress1;
    private String employeeAddress2;
    private String employeeCPE;
    private String employeePhone;
    private String employeeEmail;
    private String employeeFunction;
    private BigDecimal employeePaycheck;

    /**
     * @deprecated hibernate only
     */
    public Employee() {
    }


    public Employee(String employeeCPF, String employeeName, String employeePhone, String employeeFunction) {
        this.employeeCPF = employeeCPF;
        this.employeeName = employeeName;
        this.employeePhone = employeePhone;
        this.employeeFunction = employeeFunction;
    }

    public int getEmployeeInternalCode() {
        return employeeInternalCode;
    }

    public void setEmployeeInternalCode(int employeeInternalCode) {
        this.employeeInternalCode = employeeInternalCode;
    }

    public String getEmployeeCPF() {
        return employeeCPF;
    }

    public void setEmployeeCPF(String employeeCPF) {
        this.employeeCPF = employeeCPF;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmployeeAddress1() {
        return employeeAddress1;
    }

    public void setEmployeeAddress1(String employeeAddress1) {
        this.employeeAddress1 = employeeAddress1;
    }

    public String getEmployeeAddress2() {
        return employeeAddress2;
    }

    public void setEmployeeAddress2(String employeeAddress2) {
        this.employeeAddress2 = employeeAddress2;
    }

    public String getEmployeeCPE() {
        return employeeCPE;
    }

    public void setEmployeeCPE(String employeeCPE) {
        this.employeeCPE = employeeCPE;
    }

    public String getEmployeePhone() {
        return employeePhone;
    }

    public void setEmployeePhone(String employeePhone) {
        this.employeePhone = employeePhone;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    public String getEmployeeFunction() {
        return employeeFunction;
    }

    public void setEmployeeFunction(String employeeFunction) {
        this.employeeFunction = employeeFunction;
    }

    public BigDecimal getEmployeePaycheck() {
        return employeePaycheck.setScale(2, RoundingMode.HALF_UP);
    }

    public void setEmployeePaycheck(BigDecimal employeePaycheck) {
        this.employeePaycheck = employeePaycheck;
    }
}
