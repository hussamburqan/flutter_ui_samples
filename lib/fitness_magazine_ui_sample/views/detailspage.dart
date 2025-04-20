import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ui_samples/fitness_magazine_ui_sample/models/article_model.dart';
import '../style/text_box.dart';
import '../style/text_style.dart';

class FitnessMagazineDetailsPage extends StatelessWidget {
  const FitnessMagazineDetailsPage({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Hero(
                  tag: article.category,
                  child: CachedNetworkImage(
                    imageUrl: article.imageUrl,
                    width: double.infinity,
                    height: 320,
                    fit: BoxFit.cover
                  ),
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
                  child: DecoratedBox(
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
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Text(article.title, style: titleStyle2,),
                          ),
                          Row(
                            children: [
                            GestureDetector(
                              onTap: () {
                                
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                                child: Text(article.editor, style: titleStyle2,),
                              ),
                            ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(article.content, style: desStyle2,),
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