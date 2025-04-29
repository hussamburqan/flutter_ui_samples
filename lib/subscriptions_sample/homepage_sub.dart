import 'package:flutter/material.dart';

class HomePageSub extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Try FREE for 4 weeks"),
          Text("We uncover the facts around the \nclock, all over the globe. "),

        ],
      ),
    );
  }
}
class SubCard extends StatelessWidget{
  final String title;
  final String subtitle;

  const SubCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: , 
        onChanged: onChanged
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      ,
    );
  }

  
}