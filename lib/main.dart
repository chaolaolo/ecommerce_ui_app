import 'package:ecommerce_ui_app/models/cart.dart';
import 'package:ecommerce_ui_app/pages/cart_page.dart';
import 'package:ecommerce_ui_app/pages/home_page.dart';
import 'package:ecommerce_ui_app/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: IntroPage(),
    // );
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          "/home": (context) => HomePage(),
          "/cart_page": (context) => CartPage(),
        },
      ),
    );
  }
}
