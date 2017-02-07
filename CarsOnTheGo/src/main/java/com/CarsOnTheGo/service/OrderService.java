package com.CarsOnTheGo.service;

import com.CarsOnTheGo.model.UserOrder;


public interface OrderService {

    void addOrder(UserOrder order);

    double getOrderGrandTotal(int cartId);
}
