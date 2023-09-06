package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.Customer;
import com.example.demo.service.CustomerService;

@Controller
public class MainController {

    @Autowired
    CustomerService customerService;

    @RequestMapping("/")
    public String test() {

        return "home";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/customers")
    public String getCustomers(Model model) {
        model.addAttribute("customerList", customerService.getCustomers());
        return "allCustomers";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/addCustomers")
    public String addCustomers(Model model) {
        // model.addAttribute("customerList", customerService.getCustomers());

        model.addAttribute("customer", new Customer());
        return "addCustomers";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/saveCustomer")
    public String saveCustomer(Customer customer, RedirectAttributes redirectAttributes) {
        if (customerService.saveOrUpdateCustomer(customer)) {
            return "redirect:/customers";
        }

        redirectAttributes.addFlashAttribute("message", "Save Failure");
        return "redirect:/customers";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/deleteCustomer/{id}")
    public String deleteCustomer(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        customerService.deleteCustomer(id);
        return "redirect:/customers";

    }

    @GetMapping("{id}")
    public String editCustomer(@PathVariable Long id, Model model,
            RedirectAttributes redirectAttributes) {

        model.addAttribute("customer", customerService.getCustomerById(id));
        System.out.println(model.toString());

        return "editCustomers";
    }

    @PostMapping("/editSaveCustomer")
    public String editSaveAnime(Customer customer, RedirectAttributes redirectAttributes) {
        if (customerService.saveOrUpdateCustomer(customer)) {
            return "redirect:/customers";
        }

        return "redirect:/customers";

    }

}
