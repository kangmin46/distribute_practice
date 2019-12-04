package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/abc")
    public String abc() {
        return "abc.html";
    }

    @GetMapping("/")
    public String index() {
        return "index.html";
    }

    @GetMapping("ass")
    public String ass() {
        return "ass.html";
    }

}
