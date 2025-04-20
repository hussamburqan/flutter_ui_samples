import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/fitness_magazine_ui_sample/utilities/colormap.dart';
import '../models/article_model.dart';
import '../models/repo_data_article.dart';
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
            SizedBox(
              height: 310,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: firstArticles.length,
                itemBuilder: (context, index) {
                  return FirstSectionCard(id: '${firstArticles[index].category}$index', article: firstArticles[index],);
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                  indicatorWeight: 3,
                  tabs: [
                  CustomTab(category: 'تغذية',),
                  CustomTab(category: 'صحة',),
                  CustomTab(category: 'جمال',),
                  CustomTab(category: 'لياقة',),
                ]
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                CategoryArticlesList(articles: articleNutrition,),
                CategoryArticlesList(articles: articleHealth,),
                CategoryArticlesList(articles: articleBeauty,),
                CategoryArticlesList(articles: articleFitness,),
              ]),
            ),
          ]
        ),
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  const CustomTab({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: getCategoryColor(category),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(category),
        ),

    );
  }


}

class CategoryArticlesList  extends StatelessWidget {
  const CategoryArticlesList({super.key, required this.articles});
  final List<Article> articles;

  @override Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return ArticleListCard(
          id: '${articles[index].title}$index',
          article: articles[index],
        );
      }
    );
  }

}
class ArticleListCard extends StatelessWidget {
  const ArticleListCard({super.key, required this.article, required this.id});
  final Article article;
  final String id;

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            color: getCategoryColor(article.category),
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
                      child: Hero(
                        tag: id,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (contxt){
                              return FitnessMagazineDetailsPage(article: article,);
                            }));
                          },
                          child: CachedNetworkImage(
                            placeholder: (context, url) => Center(
                              child: Image.asset('assets/icons/png/placeholder.png',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                              ),
                            ),
                            errorWidget: (context, url, error) => Center(
                              child: Image.asset('assets/icons/png/error.png',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                              ),

                            ),
                            height: double.infinity,
                            width: double.infinity,
                            imageUrl: article.imageUrl,
                            fit: BoxFit.cover,
                            ),
                        ),
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
                             Text(article.title, style: desStyle3,),
                             Text(article.content, maxLines: 2, overflow: TextOverflow.ellipsis, style: desStyle3,),
                             sizedBoxH10,
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 CustomIcon(
                                   size: 25,
                                   enableColor: Color(0xFF4A4A4A),
                                   unEnableColor: Colors.white54,
                                   enableIcon: Icons.share,
                                   unEnableIcon: Icons.share_outlined,
                                 ),
                                 sizedBoxW5,
                                 CustomIcon(
                                   size: 25,
                                   enableColor: Color(0xFFEE5C8D),
                                   unEnableColor: Colors.white54,
                                   enableIcon: Icons.favorite,
                                   unEnableIcon: Icons.favorite_border,
                                 ),
                                 sizedBoxW5,
                                 CustomIcon(
                                   size: 25,
                                   enableColor: Color(0xFF4A4A4A),
                                   unEnableColor: Colors.white54,
                                   enableIcon: Icons.remove_red_eye,
                                   unEnableIcon: Icons.remove_red_eye_outlined,
                                 ),
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
    );
  }
}

class FirstSectionCard extends StatelessWidget{
  const FirstSectionCard({super.key, required this.article, required this.id});
  final Article article ;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        Hero(
                          tag: id,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (contxt){
                                  return FitnessMagazineDetailsPage(article: article,);
                                }));
                              },
                            child: CachedNetworkImage(
                              fit: BoxFit.fitWidth,
                              height: 170,
                              width: double.infinity,
                              imageUrl: article.imageUrl,
                              placeholder: (context, url) => Center(
                                child: Image.asset('assets/icons/png/placeholder.png',
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                  ),
                              ),
                              errorWidget: (context, url, error) => Center(
                                child: Image.asset('assets/icons/png/error.png',
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: double.infinity,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: CustomIcon(
                            size: 30,
                            enableColor: Color(0xFFFF0000),
                            unEnableColor: Colors.white,
                            enableIcon: Icons.favorite,
                            unEnableIcon: Icons.favorite_border,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: ColoredBox(
                      color: getCategoryColor(article.category),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
                      child: Text(article.category, style: titleStyle1,),
                      )
                    ),
                  ),
                  Text(article.title, style: nameStyle),
                  Text(article.content, overflow: TextOverflow.ellipsis, maxLines: 2, style: desStyle1),
                ],
              ),
            ),
    );
  }
}

class CustomIcon extends StatefulWidget {
  const CustomIcon({super.key, required this.enableIcon, required this.unEnableIcon, required this.enableColor, required this.unEnableColor, required this.size});
  final double size;
  final IconData enableIcon;
  final IconData unEnableIcon;
  final Color enableColor;
  final Color unEnableColor;

  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isEnable = !isEnable;
        });
      },
        child: Icon(
            (isEnable
                ? widget.enableIcon
                : widget.unEnableIcon
            ),
            size: widget.size,
            color: isEnable
                ? widget.enableColor
                : widget.unEnableColor
        ),
    );
  }
}