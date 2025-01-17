import 'package:ecommerce_ui_app/models/product.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  //list of prod for sale
  List<Product> productShop = [
    Product(
      name: "shoes1",
      price: 120,
      imagePath: "lib/images/shoes1.png",
      description: "description",
    ),
    Product(
      name: "shoes2",
      price: 120,
      imagePath: "lib/images/shoes2.png",
      description: "description",
    ),
    Product(
      name: "shoes3",
      price: 120,
      imagePath: "lib/images/shoes3.png",
      description: "description",
    ),
    Product(
      name: "clothes1",
      price: 120,
      imagePath: "lib/images/clothes1.png",
      description: "description",
    ),
    Product(
      name: "clothes2",
      price: 120,
      imagePath: "lib/images/clothes2.png",
      description: "description",
    ),
    Product(
      name: "clothes3",
      price: 120,
      imagePath: "lib/images/clothes3.png",
      description: "description",
    ),
    Product(
      name: "accessory1",
      price: 120,
      imagePath: "lib/images/accessory1.png",
      description: "description",
    ),
    Product(
      name: "accessory2",
      price: 120,
      imagePath: "lib/images/accessory2.png",
      description: "description",
    ),
    Product(
      name: "accessory3",
      price: 120,
      imagePath: "lib/images/accessory3.png",
      description: "description",
    ),
  ];

  //list of items in user cart
  List<Product> userCart = [];

//get list of product for sale
  List<Product> getProductList() {
    return productShop;
  }

  //get cart
  List<Product> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Product product) {
    userCart.add(product);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Product product) {
    userCart.remove(product);
    notifyListeners();
  }
}
