package model.respository.impl;

import model.bean.Customer;
import model.respository.CustomerRespository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class CustomerRespositoryImpl implements CustomerRespository {

    private static Map<Integer, Customer> customerMap;

    static {
        customerMap = new TreeMap<>();
        customerMap.put( 1, new Customer(123,"YessiCa Hiz","02/1/1998","America USA","anh1.jpeg"));
        customerMap.put( 2, new Customer(456,"Maria Ozz","02/12/1997","Nga Ngo","anh2.jpeg"));
        customerMap.put( 3, new Customer(789,"Simple","02/8/1999","Chin chon","anh3.jpeg"));
    }
    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customerMap.values());
    }

    @Override
    public Customer findById(Integer id) {
        return customerMap.get(id)  ;
    }

    @Override
    public void save(Customer customer) {

    }

    @Override
    public void remove(Customer customer) {

    }
}
