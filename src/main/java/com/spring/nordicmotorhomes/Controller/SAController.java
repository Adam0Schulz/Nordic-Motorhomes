package com.spring.nordicmotorhomes.Controller;

import com.spring.nordicmotorhomes.Service.EmployeeService;
import com.spring.nordicmotorhomes.Service.SAService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SAController {

    @Autowired
    SAService saService;

    @GetMapping("/dashboard/sa")
    public String index () {
        if(EmployeeService.getCurrentEmp().getTitle().equals("sales assistant")) {
            return "dashboard";
        }
        return "redirect:/login";
    }




}
