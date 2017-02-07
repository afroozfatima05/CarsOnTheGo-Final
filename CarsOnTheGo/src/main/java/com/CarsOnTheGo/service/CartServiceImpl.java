package com.CarsOnTheGo.service;

import com.CarsOnTheGo.dao.CartDao;
import com.CarsOnTheGo.model.Cart;
import com.CarsOnTheGo.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDao cartDao;

    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }

    public void update(Cart cart) {
        cartDao.update(cart);
    }
}
