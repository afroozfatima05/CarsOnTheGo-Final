package com.CarsOnTheGo.controller;

import com.CarsOnTheGo.model.Cart;
import com.CarsOnTheGo.model.UsersDetail;
import com.CarsOnTheGo.model.UserOrder;
import com.CarsOnTheGo.service.CartService;
import com.CarsOnTheGo.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


/*
 * This controller is used to handle user order
 */
@Controller
public class OrderController {

    @Autowired
    private CartService cartService;

    @Autowired
    private OrderService orderService;
    /*
     * createOrder method is used to insert user order into the database.
     */
    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId) {
    	UserOrder userOrder = new UserOrder();
        Cart cart=cartService.getCartById(cartId);
        System.out.println("cart:"+cart.getCartId());
        userOrder.setCart(cart);

        UsersDetail usersDetail = cart.getUsersDetail();
        userOrder.setUsersDetail(usersDetail);
        
        userOrder.setShippingAddress(usersDetail.getShippingAddress());

        orderService.addOrder(userOrder);

        return "redirect:/checkout?cartId="+cartId;
    }
}