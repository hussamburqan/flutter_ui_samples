import 'package:flutter/material.dart';

class Advice {
  
  String title;
  String description;
  String imageUrl;
  Color color;

  Advice({
    required this.title, 
    required this.description, 
    required this.imageUrl, 
    required this.color, 

    });

}





List<Advice> nutrition = [
  Advice(
    title: 'المسموحات الممنوعات في رمضان', 
    description: 'kdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjkdjfkjsdk kjsldjkfjk ajklkjl fjk ajk ak afkja fdjk fdjk jkf jkfl jklf jk jlkkjlfjkaf fakj afkjl afkj fkj afkjl akfjl afkjl kafl kfl akfl afk fdkkj dfkla fklfk fdk fk fkjl kl kjlskl aklsdfjkl',
    imageUrl: 'assets/icons/png/placeholder.png',
    color: Color(0xFfB4cf66)
  ),
  Advice(
    title: 'فوائد تناول وجبة السحور', 
    description: 'description', 
    imageUrl: 'assets/icons/png/placeholder.png',
    color: Color(0xFfB4cf66)

  ),
  Advice(
    title: 'ماهو البيض', 
    description: 'description', 
    imageUrl: 'assets/icons/png/placeholder.png',
    color: Color(0xFfB4cf66)

  ),
];

List<Advice> health = [
  Advice(
    title: 'تناول البروكلي ', 
    description: 'انه شيء جيد ', 
    imageUrl: 'assets/icons/png/placeholder.png',
    color: Color(0xFF79bde8)
  ),
   Advice(
    title: 'شرب ٨ أكواب من الماء يطيل العمر', 
    description: 'description', 
    imageUrl: 'assets/icons/png/placeholder.png',
    color: Color(0xFF79bde8)

  ),
];

List<Advice> beauty = [
  Advice(
    title: 'كثرة الاستحمام تضر بشرة الاطفال', 
    description: 'description', 
    imageUrl: 'assets/icons/png/placeholder.png',
    color: Color(0xFFf05e8e) 
  ),
];

List<Advice> fitness = [
  Advice(
    title: 'ما الذاكرة العضلية .. وكيف تزيدها', 
    description: 'description', 
    imageUrl: 'assets/icons/png/placeholder.png',
    color: Color(0xFFfccd0a)
  ),
];