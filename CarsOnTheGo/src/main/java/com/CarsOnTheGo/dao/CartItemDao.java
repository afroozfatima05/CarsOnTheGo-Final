package com.CarsOnTheGo.dao;

import com.CarsOnTheGo.model.Cart;
import com.CarsOnTheGo.model.CartItem;


public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByItemId (int itemId);

}
