package com.spring.nordicmotorhomes.Controller;

import com.spring.nordicmotorhomes.Model.Employee;
import com.spring.nordicmotorhomes.Service.EmpServiceImpl;
import com.spring.nordicmotorhomes.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@Controller
public class LoginController {

    @Autowired
    EmployeeService employeeService;

    @GetMapping("/")
    public String index() {
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("emp", "");
        return "login/index";
    }

    @PostMapping("/login")
    public String login(@RequestParam(name = "email") String email, @RequestParam(name = "password") String password, Model model) {
        Employee currentEmp  = employeeService.login(email, password);
        model.addAttribute("emp", currentEmp);
        return "login/index";
    }



    @Autowired
    EmpServiceImpl empServiceImpl;

    @GetMapping("/findall")
    @ResponseBody

    public ArrayList<Employee> getAllEmployee() {
        System.out.println("lesss go");
        return empServiceImpl.findAllEmployee();
    }
    @GetMapping("/findbyid/{id}")
    @ResponseBody
    public Employee getEmployeeUsingId(@PathVariable Integer id) {
        return empServiceImpl.findAllEmployeeByID(id);
    }
    @GetMapping("/add")
    @ResponseBody
    public void add() {
        empServiceImpl.addEmployee();
        System.out.println("added");

    }
    @GetMapping("/deletebyid/{id}")
    @ResponseBody
    public void deleteByID(@PathVariable Integer id) {
        empServiceImpl.deleteByID(id);
        System.out.println("deleted by id");
    }

    @GetMapping("/delete")
    @ResponseBody
    public void delete() {
        empServiceImpl.deleteAllData();
        System.out.println("deleted all data");

    }
}
