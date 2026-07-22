package com.example.OrderService.Entity;

import jakarta.persistence.*;

@Entity
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long orderId;

    private Long userId;

    private String productName;

    private int quantity;

    // Getter for orderId
    public Long getOrderId() {
        return orderId;
    }

    // Setter for orderId
    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    // Getter for userId
    public Long getUserId() {
        return userId;
    }

    // Setter for userId
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    // Getter for productName
    public String getProductName() {
        return productName;
    }

    // Setter for productName
    public void setProductName(String productName) {
        this.productName = productName;
    }

    // Getter for quantity
    public int getQuantity() {
        return quantity;
    }

    // Setter for quantity
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}