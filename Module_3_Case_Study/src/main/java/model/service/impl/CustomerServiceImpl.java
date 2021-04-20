package model.service.impl;

import model.bean.Customer;
import model.repository.CRUDRepository;
import model.repository.Impl.CustomerRepositoryImpl;
import model.service.CRUDService;

import java.util.List;

public class CustomerServiceImpl implements CRUDService<Customer> {
    private CRUDRepository<Customer> customerCRUDRepository = new CustomerRepositoryImpl();
    @Override
    public List<Customer> findAll() {
        return customerCRUDRepository.findAll();
    }

    @Override
    public List<Customer> findAllType() {
        return customerCRUDRepository.findAllType();
    }

    @Override
    public boolean insertInto(Customer customer) {
        return customerCRUDRepository.insertInto(customer);
    }

    @Override
    public boolean delete(String id) {
        return customerCRUDRepository.delete(id)    ;
    }

    @Override
    public Customer findById(String id) {
        return customerCRUDRepository.findById(id);
    }

    @Override
    public boolean edit(Customer customer) {
        return customerCRUDRepository.edit(customer);
    }

    @Override
    public List<Customer> searchByName(String name) {
        return customerCRUDRepository.searchByName(name);
    }

    @Override
    public List<Customer> sort() {
        return customerCRUDRepository.sort();
    }
}
