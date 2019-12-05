package com.hisen.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
    @RequestMapping(value = "/login")
    private String list(Model model) {
        return "login";// WEB-INF/jsp/"list".jsp
    }
}
