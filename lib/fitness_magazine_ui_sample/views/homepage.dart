import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/fittnees_advice.dart';
import '../models/health_magazine.dart';
import '../style/text_box.dart';
import '../style/text_style.dart';
import 'detailspage.dart';

class FitnessMagazineHomePage extends StatelessWidget {
  const FitnessMagazineHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('مجلة صحية', style: titleAppStyle),
          ),
        body: Column(
          children: [
            Container(
              height: 330,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: magazines.length,
                itemBuilder: (context, index) {
                  return HealthMagazineCard(id: 'H$index', magazine: magazines[index],);
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                  indicatorWeight: 3,
                  labelPadding: EdgeInsets.all(10),
                  dividerColor: Colors.transparent,
                  indicatorColor: Color(0xFF48444D),
                  tabs: [
                    Text('تغذية'),
                    Text('صحة'),
                    Text('جمال'),
                    Text('لياقة'),
                  ]
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                BuilderAdviceCard(advices: nutrition,),
                BuilderAdviceCard(advices: health,),
                BuilderAdviceCard(advices: beauty,),
                BuilderAdviceCard(advices: fitness,),


              ]),
            ),
          ]
        ),
      ),
    ); 
  }
}

class BuilderAdviceCard extends StatelessWidget {
  final List<Advice> advices;
  BuilderAdviceCard({super.key, required this.advices});

  @override Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: advices.length,
      itemBuilder: (context, index) {
        return AdviceCard(id: 'A$index', advice: advices[index],);
      }
    );
  }

}
class AdviceCard extends StatelessWidget {
  final Advice advice;
  final String id;
  AdviceCard({super.key, required this.advice, required this.id});

  @override
  Widget build(BuildContext context){
    return Hero(
      tag: id,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (contxt){
              return FitnessMagazineDetailsPage(imageId: id, title: advice.title, description: advice.description, imageUrl: advice.imageUrl);
            }));
          },
          child: Card(
            color: advice.color,
            elevation: 8,
            child: Container(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                    child: Container(
                      width: 130,
                      child: CachedNetworkImage(
                        placeholder: (context, url) => Center(child: CircularProgressIndicator(color: advice.color,)),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        height: double.infinity,
                        width: double.infinity,
                        imageUrl: advice.imageUrl,
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(advice.title, style: desStyle3,),
                             Text(advice.description, maxLines: 2, overflow: TextOverflow.ellipsis, style: desStyle3,),
                             sizedBoxH10,
                             Row(
                               children: [
                                Spacer(),
                                Icon(Icons.share, color: Colors.white,),
                                sizedBoxW5,
                                Icon(Icons.favorite_border, color: Colors.white,),
                                sizedBoxW5,
                                Icon(Icons.remove_red_eye, color: Colors.white,),
                               ],
                             ),
                          ],
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HealthMagazineCard extends StatelessWidget{
  final HealthMagazine magazine ;
  final String id;
  HealthMagazineCard({super.key, required this.magazine, required this.id});

  @override
  Widget build(BuildContext context) {
    return Hero(
        
        tag: id,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (contxt){
                return FitnessMagazineDetailsPage(imageId: id, title: magazine.title, description: magazine.description, imageUrl: magazine.imageUrl);
              }));
            },
            child: Container(
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
            
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        CachedNetworkImage(
                          fit: BoxFit.fitWidth,
                          height: 170,
                          width: double.infinity,
                          imageUrl: magazine.imageUrl,
                          placeholder: (context, url) => Center(child: CircularProgressIndicator(color: magazine.color,)),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Icon(Icons.favorite_border,size: 30, color: Colors.white,))
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: magazine.color,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
                        child: Text(magazine.category, style: titleStyle1,),
                      )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(magazine.title, style: nameStyle),
                    )
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(magazine.description, overflow: TextOverflow.ellipsis, maxLines: 2, style: desStyle1),
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}



