import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/filter_sample/home_page/home_page_view.dart';

class MyAppFilter extends StatelessWidget {
  const MyAppFilter ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleSmall: TextStyle(
            fontSize: 16,
            color: Color(0xFFbab9ce),
            fontFamily: 'Kula'
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 58, 58, 68),
            fontFamily: 'Kula'
          ),
          titleLarge: TextStyle(
            fontSize: 40,
            color: Color(0xFFbab9ce),
            fontFamily: 'Kula'
          )
        ),
        iconTheme: IconThemeData(
          size: 40,
          color: Colors.grey
        )
      ),
        home: HomePageeFilter()
    );
  }
}
