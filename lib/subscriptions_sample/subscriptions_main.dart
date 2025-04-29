import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/subscriptions_sample/homepage_sub.dart';

class Subscriptins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontFamily: "Alkes",
              fontWeight: FontWeight.w900,
              fontSize: 22,
              color: Color(0xFF0F0E35)
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xFF0F0E35)
            ),
            titleSmall: TextStyle(
              fontSize: 14,
              color: Color(0xFF0F0E35)
            ),
            labelMedium: TextStyle(
              fontSize: 14,
              color: Colors.white
            ),
            labelSmall: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 14,
              color: Color(0xFF4248C0),
            ),
          )
      ),
      home: HomePageSub(),
    );
  }
  

}