import 'package:ecommerce_ui_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 20),
                child: Image.asset(
                  'lib/images/adidas.png',
                  height: 120,
                ),
              ),

              const SizedBox(
                height: 50,
              ),
              //title
              const Text(
                "Impossible Is Nothing",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                "Through Sport, We Have the Power to Change Lives",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              //subtitle
              const SizedBox(
                height: 50,
              ),

              //start now button
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[900], borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
