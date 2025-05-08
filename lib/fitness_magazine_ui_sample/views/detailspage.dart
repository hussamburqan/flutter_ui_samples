import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ui_samples/fitness_magazine_ui_sample/models/article_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../style/text_box.dart';
import '../style/text_style.dart';

class FitnessMagazineDetailsPage extends StatelessWidget {
  const FitnessMagazineDetailsPage({super.key, required this.article, required this.id});
  final Article article;
  final String id;
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
                  tag: id,
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
                  // داخل Positioned - DecoratedBox (نفس مكانك)
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, -3),
                        )
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sizedBoxH10,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Text(
                                article.title,
                                textAlign: TextAlign.center,
                                style: titleStyle2.copyWith(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: GestureDetector(
                              onTap: () async {
                                try {
                                  final uri = Uri.parse(article.source);
                                  if (!await launchUrl(uri)) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('تعذر فتح الرابط')),
                                    );
                                  }
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('لم يتم فتح الرابط بسبب خطأ ما')),
                                  );
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF3977AA).withOpacity(0.1),
                                  border: Border.all(color: const Color(0xFF3977AA)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'المصدر',
                                  style: desStyle4,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              article.content,
                              style: desStyle2.copyWith(height: 1.6),
                            ),
                          ),
                          const SizedBox(height: 20),
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