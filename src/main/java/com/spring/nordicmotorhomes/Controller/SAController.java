package com.spring.nordicmotorhomes.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SAController {

    @GetMapping("/dashboard/sa")
    public String index () {
        return "dashboard/sa/index";
    }

}
