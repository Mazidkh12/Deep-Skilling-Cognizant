package com.example.cognizant.Service;

import com.example.cognizant.Entity.User;
import com.example.cognizant.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    UserRepository repo;

    @Autowired
    public UserService(UserRepository repo) {
        this.repo = repo;
    }

    public List<User> getAllUsers() {
        return repo.findAll();
    }

    public User save(User user) {
        return repo.save(user);
    }

    public User getUser(Long id) {
        return repo.findById(id).orElse(null);
    }
}