import 'package:flutter/material.dart';

class HealthMagazine {
  
  String title;
  String description;
  String imageUrl;
  String category;
  Color color;

  HealthMagazine({
    required this.title, 
    required this.description, 
    required this.imageUrl, 
    required this.category,
    required this.color
    });
    
}


List<HealthMagazine> magazines = [
  HealthMagazine(
    title: 'ما الذاكرة العضلية .. وكيف تزيدها', 
    description: 'skajdfhsjdfhsjkfhjsjk jjks jk ajaskdjasd kjaskdjk jsk ajlsklj kld kjad kjkla sdkl dkdajk dkl jdkd kj ak klfa jfjjk jak jk jks jka fjk fjk', 
    imageUrl: 'assets/icons/png/placeholder.png',
    category: 'تغذية',
    color: Color(0xFfB4cf66),
  ),
  HealthMagazine(
    title: 'ما الذاكرة العضلية .. وكيف تزيدها', 
    description: 'skajdfhsjdfhsjkfhjsjk jjks jk ajaskdjasd kjaskdjk jsk ajlsklj kld kjad kjkla sdkl dkdajk dkl jdkd kj ak klfa jfjjk jak jk jks jka fjk fjk', 
    imageUrl: 'assets/icons/png/placeholder.png',
    category: 'تغذية',
    color: Color(0xFfB4cf66),
  ),
  HealthMagazine(
    title: 'ما الذاكرة العضلية .. وكيف تزيدها', 
    description: 'skajdfhsjdfhsjkfhjsjk jjks jk ajaskdjasd kjaskdjk jsk ajlsklj kld kjad kjkla sdkl dkdajk dkl jdkd kj ak klfa jfjjk jak jk jks jka fjk fjk', 
    imageUrl: 'assets/icons/png/placeholder.png',
    category: 'تغذية',
    color: Color(0xFfB4cf66),
  ),
  HealthMagazine(
    title: 'ما الذاكرة العضلية .. وكيف تزيدها', 
    description: 'skajdfhsjdfhsjkfhjsjk jjks jk ajaskdjasd kjaskdjk jsk ajlsklj kld kjad kjkla sdkl dkdajk dkl jdkd kj ak klfa jfjjk jak jk jks jka fjk fjk', 
    imageUrl: 'assets/icons/png/placeholder.png',
    category: 'تغذية',
    color: Color(0xFfB4cf66),
  ),
];