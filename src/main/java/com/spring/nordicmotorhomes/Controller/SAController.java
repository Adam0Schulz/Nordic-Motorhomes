package com.spring.nordicmotorhomes.Controller;

import com.spring.nordicmotorhomes.Entity.Booking;
import com.spring.nordicmotorhomes.Service.EmployeeService;
import com.spring.nordicmotorhomes.Service.SAService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SAController {

    @Autowired
    SAService saService;

    @GetMapping("/dashboard/sa")
    public String index () {
        if(EmployeeService.getCurrentEmp().getTitle().equals("sales assistant")) {
            return "dashboard/sa/index";
        }
        return "redirect:/login";
    }


}
