package com.CarsOnTheGo.service;

import com.CarsOnTheGo.dao.CartItemDao;
import com.CarsOnTheGo.model.Cart;
import com.CarsOnTheGo.model.CartItem;
import com.CarsOnTheGo.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class CartItemServiceImpl implements CartItemService{

    @Autowired
    private CartItemDao cartItemDao;

    public void addCartItem(CartItem cartItem) {
        cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem) {
    	
        cartItemDao.removeCartItem(cartItem);
    }

    public void removeAllCartItems(Cart cart){
    	System.out.println("In Remove Cart item service");
        cartItemDao.removeAllCartItems(cart);
    }

    public CartItem getCartItemByItemId (int itemId) {
        return cartItemDao.getCartItemByItemId(itemId);
    }
}
