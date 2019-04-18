package com.use3w.mng.dao;

import com.use3w.mng.model.Employee;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class EmployeeDao {

    @PersistenceContext
    private EntityManager em;


    public void save(Employee employee) {
        em.persist(employee);
    }

    public Employee findOne(String employeeCPF) {
        return em.find(Employee.class, employeeCPF);
    }


    public List<Employee> findAll() {
        return em.createQuery("select e from Employee e", Employee.class).getResultList();
    }

    public void delete(String employeeCPF) {
        em.remove(findOne(employeeCPF));
    }
}
