import 'package:ecommerce_ui_app/models/product.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  Product product;
  void Function()? onTap;

  ProductTile({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //prod image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              product.imagePath,
            ),
          ),

          //descrip
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              product.description,
              style: TextStyle(
                color: Colors.grey[600],
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          //price + detail
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "VND " + product.price.toString(),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                //btn add to cart
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black, borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
                    child: IconButton(
                      onPressed: onTap,
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
