package com.example.OrderService.Service;

import com.example.OrderService.Entity.Orders;
import com.example.OrderService.FeignClient.UserClient;
import com.example.OrderService.Repository.OrderRepository;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {

    @Autowired
    OrderRepository repository;

    @Autowired
    UserClient userClient;

    public Orders placeOrder(Orders order) {

        User user = userClient.getUser(order.getUserId());

        if(user == null){
            throw new RuntimeException("User not found");
        }

        return repository.save(order);
    }

    public List<Orders> getOrders() {
        return repository.findAll();
    }
}