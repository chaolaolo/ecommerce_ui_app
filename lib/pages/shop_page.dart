import 'package:ecommerce_ui_app/components/product_tile.dart';
import 'package:ecommerce_ui_app/models/cart.dart';
import 'package:ecommerce_ui_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addProductToCart(Product product) {
    Provider.of<Cart>(context, listen: false).addItemToCart(product);

    //alert if success
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully added!"),
        content: Text("Check your cart!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //Search
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
          ),

          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Unleash Your Style, Redefine Your Wardrobe!",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //hot pick items
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot pick 🔥",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          //list product for sale
          Expanded(
            child: ListView.builder(
                itemCount: Provider.of<Cart>(context).productShop.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  //create a product
                  // Product product = Product(
                  //   name: "shoes",
                  //   price: 100.0,
                  //   imagePath: 'lib/images/shoes1.png',
                  //   description: "description",
                  // );
                  //get one from list
                  Product product = value.getProductList()[index];
                  //return the products
                  return ProductTile(
                    product: product,
                    onTap: () => addProductToCart(product),
                  );
                }),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: Divider(
              color: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
