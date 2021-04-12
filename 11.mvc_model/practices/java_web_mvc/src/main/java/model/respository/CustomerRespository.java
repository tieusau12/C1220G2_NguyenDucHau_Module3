package model.respository;

import model.bean.Customer;

import java.util.List;

public interface CustomerRespository {
    List<Customer> findAll();

    Customer findById(Integer id);

    void save(Customer customer);

    void remove(Customer customer);
}
