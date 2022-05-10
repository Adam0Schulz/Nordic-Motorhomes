package com.spring.nordicmotorhomes.Controller;

import com.spring.nordicmotorhomes.Model.Employee;
import com.spring.nordicmotorhomes.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
        model.addAttribute("emp", null);
        return "login/index";
    }

    @PostMapping("/login")
    public String login(@RequestParam(name = "email") String email, @RequestParam(name = "password") String password, Model model) {
        Employee currentEmp  = employeeService.login(email, password);
        model.addAttribute("emp", email);
        return "login/index";
    }

}
