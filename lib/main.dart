import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/screen/home_screen.dart';
void main() => runApp(FoodDeliveryApp());


class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        scaffoldBackgroundColor: Color(0xffFFFFFF),
        primaryColor: Color(0xfffb475f),

      ),
      home: HomeScreen(),

    );
  }
}



