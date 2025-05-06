import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/profile_sample/views/profile_view.dart';

class MyAppProfile extends StatelessWidget {
  const MyAppProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: ProfileView(),
    );
  }
}