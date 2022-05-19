package com.spring.nordicmotorhomes.Controller;

import com.spring.nordicmotorhomes.Entity.Employee;
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

    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("emp", "");
        return "login/index";
    }

    @PostMapping("/login")
    public String login(@RequestParam(name = "email") String email, @RequestParam(name = "password") String password, Model model) {
        Employee currentEmp  = employeeService.login(email, password);
        if (currentEmp == null) {
            model.addAttribute("emp", null);
            return "login/index";
        }
        EmployeeService.setCurrentEmp(currentEmp);
        return "redirect:/dashboard";
    }

}
