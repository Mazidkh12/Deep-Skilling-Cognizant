package com.example.OrderService.Controller;

import com.example.OrderService.Entity.Orders;
import com.example.OrderService.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/orders")
public class OrderController {

    @Autowired
    OrderService service;

    @PostMapping
    public Orders placeOrder(@RequestBody Orders order){
        return service.placeOrder(order);
    }

    @GetMapping
    public List<Orders> getOrders(){
        return service.getOrders();
    }
}