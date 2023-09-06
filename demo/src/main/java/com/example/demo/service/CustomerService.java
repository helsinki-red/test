package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Customer;
import com.example.demo.repository.CustomerRepository;

@Service
public class CustomerService {

    @Autowired
    CustomerRepository customerRepository;

    public List<Customer> getCustomers() {

        List<Customer> customerList = customerRepository.findAll();

        return customerList;
    }

    public boolean saveOrUpdateCustomer(Customer customer) {
        customerRepository.save(customer);
        return true;
    }

    public boolean deleteCustomer(Long id) {
        customerRepository.deleteById(id);
        return true;
    }

    public Customer getCustomerById(Long id) {

        Customer customer = customerRepository.findById(id).orElse(null);
        return customer;
    }

}