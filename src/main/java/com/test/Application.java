package com.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class Application {

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String hello() {
        return "test springboot jar run v1";
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}