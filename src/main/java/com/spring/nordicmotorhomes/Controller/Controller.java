package com.spring.nordicmotorhomes.Controller;

import com.spring.nordicmotorhomes.Model.Employee;
import com.spring.nordicmotorhomes.Service.EmployeeService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@org.springframework.stereotype.Controller
public class Controller {

    @GetMapping("/")
    public String index() {
        return "redirect:/login";
    }

    @GetMapping("/dashboard")
    public String dashboard() {
        String empTitle = EmployeeService.getCurrentEmp().getTitle();
        if (empTitle.equals("sales assistant")) {
            return "redirect:/dashboard/sa";
        } else if (empTitle.equals("mechanic")) {
            return "";
        }
        return "";
    }

    @GetMapping("/error")
    @ResponseBody()
    public String error() {
        return "Oops something went wrong :(";
    }
}
