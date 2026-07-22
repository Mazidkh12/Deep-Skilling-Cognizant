package com.example.cognizant.Conotroller;

import com.example.cognizant.Entity.User;
import com.example.cognizant.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    UserService service;

    @PostMapping
    public User addUser(@RequestBody User user) {
        return service.save(user);
    }

    @GetMapping("/{id}")
    public User getUser(@PathVariable Long id) {
        return service.getUser(id);
    }

    @GetMapping
    public List<User> getUsers() {
        return service.getAllUsers();
    }
}