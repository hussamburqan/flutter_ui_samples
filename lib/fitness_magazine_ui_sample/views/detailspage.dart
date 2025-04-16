import 'package:flutter/material.dart';
import '../style/text_box.dart';
import '../style/text_style.dart';

class FitnessMagazineDetailsPage extends StatelessWidget {

  final String title;
  final String description;
  final String imageUrl;

  FitnessMagazineDetailsPage({super.key, required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  imageUrl,
                  width: double.infinity,
                  height: 320,
                  fit: BoxFit.cover
                ),
            
                Positioned(
                  top: 40,
                  right: 10,
                  child: IconButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: Icon(Icons.arrow_back, size: 30,color: Colors.white,))
                ),
                Positioned(
                  top: 280,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    ),
                    color: Colors.white,
                  ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          sizedBoxH10,
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(title, style: titleStyle2,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(description, style: desStyle2,),
                          ),
                        ],
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