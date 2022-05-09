package com.spring.nordicmotorhomes.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class LoginController {

    @GetMapping("/")
    public RedirectView index() {
        return new RedirectView("/login");
    }

    @GetMapping("/login")
    public String login() {
        return "login/index";
    }

    @PostMapping("/login")
    public String login(@RequestBody String string) {
        System.out.println(string);

        return "";
    }

}
