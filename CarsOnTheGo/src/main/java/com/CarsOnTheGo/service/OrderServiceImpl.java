package com.CarsOnTheGo.service;

import com.CarsOnTheGo.dao.OrderDao;
import com.CarsOnTheGo.model.Cart;
import com.CarsOnTheGo.model.CartItem;
import com.CarsOnTheGo.model.UserOrder;
import com.CarsOnTheGo.service.CartService;
import com.CarsOnTheGo.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;

    @Autowired
    private CartService cartService;

    public void addOrder(UserOrder userOrder) {
    	orderDao.addOrder(userOrder);
    }

    public double getOrderGrandTotal(int cartId) {
        double grandTotal=0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            grandTotal+=item.getTotalPrice();
        }

        return grandTotal;
    }
}
