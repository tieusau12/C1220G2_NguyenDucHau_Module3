package model.service.impl;

import model.bean.Customer;
import model.respository.CustomerRespository;
import model.respository.impl.CustomerRespositoryImpl;
import model.service.CustomerService;

import java.util.List;

public class CustomerServiceImpl  implements CustomerService {
    private CustomerRespository customerRespository = new CustomerRespositoryImpl();
    @Override
    public List<Customer> findAll() {
        return this.customerRespository.findAll();
    }

    @Override
    public Customer findById(Integer id) {
        return this.customerRespository.findById(id)    ;
    }

    @Override
    public void save(Customer customer) {

    }

    @Override
    public void remove(Customer customer) {

    }
}
