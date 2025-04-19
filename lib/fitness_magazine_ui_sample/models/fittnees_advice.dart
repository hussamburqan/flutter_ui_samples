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
    title: 'أهمية تناول الألياف',
    description: '''
تناول الألياف يلعب دورًا مهمًا في تحسين صحة الجهاز الهضمي وتقليل خطر الإصابة بالإمساك. توجد الألياف بكثرة في الخضروات، الفواكه، الحبوب الكاملة، والبقوليات. 

الألياف تساهم أيضاً في الشعور بالشبع لفترات أطول، مما يساعد في التحكم بالوزن. تناول كمية كافية منها يساعد في تنظيم مستوى السكر في الدم وتقليل الكوليسترول، مما يساهم في الوقاية من أمراض القلب والسكري من النوع الثاني.

ابدأ يومك بوجبة فطور تحتوي على الشوفان أو خبز القمح الكامل، ولا تنس شرب كمية كافية من الماء ليساعد الألياف على العمل بفعالية.
''',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCeHw7JGbqqXNCCO6-FhpVD4bkMtmUGH3WJw&s',
    color: Color(0xFfB4cf66),
  ),
  Advice(
    title: 'توازن الوجبات اليومية',
    description: '''
التوازن في تناول الطعام يعني دمج البروتينات، الكربوهيدرات، والدهون الصحية في كل وجبة. يساعد ذلك في توفير طاقة مستدامة للجسم وتحسين الأداء الذهني والجسدي.

تناول وجبة تحتوي على الخضروات الملونة، مصدر بروتين مثل البيض أو العدس، وبعض الدهون الصحية مثل زيت الزيتون أو المكسرات. التوازن لا يعني الحرمان، بل الاعتدال في الكمية والاختيار الذكي.

تجنب تناول الوجبات السريعة بانتظام، واحرص على تحضير وجباتك في المنزل لضمان الجودة الغذائية.
''',
    imageUrl: 'https://www.clevelandclinicabudhabi.ae/health-byte/-/media/images/health-byte/article-image/boost-your-immunity-with-the-foods-you-eat/boost-your-immunity-with-the-foods-you-eat-lg.png?h=514&w=877&la=ar-AE&hash=77DCD880C9B1BEE0E5944F8B3AE426BA',
    color: Color(0xFfB4cf66),
  ),
  Advice(
    title: 'ما هو البيض؟',
    description: 'البيض مصدر غني بالبروتين عالي الجودة، ويحتوي على العديد من الفيتامينات والمعادن مثل فيتامين B12 والحديد. يعد من الأطعمة الكاملة التي يمكن تضمينها في وجبات الفطور أو العشاء. البيض أيضاً مفيد لصحة العيون والدماغ، ويمكن تحضيره بطرق صحية مثل السلق أو الطهي بالبخار.',
    imageUrl: 'https://dieteticdirections.com/wp-content/uploads/2015/11/eggs-hard.jpg',
    color: Color(0xFfB4cf66),
  ),
];


List<Advice> health = [
  Advice(
    title: 'تناول البروكلي',
    description: 'البروكلي من الخضروات الغنية بمضادات الأكسدة والفيتامينات مثل فيتامين C و K. يساعد في تقوية جهاز المناعة، تحسين صحة القلب، والوقاية من السرطان. يمكن تناوله مطهواً على البخار أو في السلطات. يُعتبر غذاءً ممتازاً للأطفال والبالغين بفضل قيمته الغذائية العالية.',
    imageUrl: 'https://cdn.salla.sa/XRVjV/5a865824-63ed-454c-9968-1614b72fde1c-1000x1000-oOvM4ZbVGdjhZckiYYX2kbD1i0prGGqxwQKvMEML.png',
    color: Color(0xFF79bde8),
  ),
  Advice(
    title: 'شرب ٨ أكواب من الماء يطيل العمر',
    description: 'شرب الماء بانتظام يعزز وظائف الأعضاء، يحافظ على توازن السوائل، ويخلص الجسم من السموم. الحفاظ على ترطيب الجسم يقلل من خطر الإصابة بالأمراض المزمنة ويحسّن من المزاج والتركيز. ينصح بشرب ما لا يقل عن ٨ أكواب يومياً، ويزداد الاحتياج في الطقس الحار أو عند ممارسة التمارين.',
    imageUrl: 'https://dqnxlhsgmg1ih.cloudfront.net/storage/attachments/5867/%D8%B4%D8%B1%D8%A8-8-%D8%A3%D9%83%D9%88%D8%A7%D8%A8-%D9%85%D8%A7%D8%A1-%D9%8A%D9%88%D9%85%D9%8A%D8%A7-%D8%AE%D8%B1%D8%A7%D9%81%D8%A9-%D9%82%D8%AF%D9%8A%D9%85%D8%A9-1635010617986_large.jpeg',
    color: Color(0xFF79bde8),
  ),
];

List<Advice> beauty = [
  Advice(
    title: 'كثرة الاستحمام تضر بشرة الأطفال',
    description: 'الاستحمام المتكرر للأطفال، خاصة بالماء الساخن والصابون القوي، يمكن أن يزيل الزيوت الطبيعية من الجلد ويسبب الجفاف أو التهيج. يُنصح باستخدام صابون خفيف وماء فاتر، وتحديد عدد مرات الاستحمام إلى مرتين أو ثلاث أسبوعياً ما لم يكن الطفل متسخاً أو متعرقاً.',
    imageUrl: 'https://images.unsplash.com/photo-1561567131-f7d83083aee0?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    color: Color(0xFFf05e8e),
  ),
];


List<Advice> fitness = [
  Advice(
    title: 'ما الذاكرة العضلية .. وكيف تزيدها',
    description: 'الذاكرة العضلية هي قدرة الجسم على تذكر الحركات والأنشطة البدنية التي تم تعلمها مسبقاً، حتى بعد التوقف لفترة عن ممارستها. تنشأ هذه الذاكرة من خلال التكرار والتدريب المنتظم، حيث يتم ترسيخ الأوامر الحركية في الدماغ والأعصاب المرتبطة بالعضلات. من أمثلتها: قيادة الدراجة، العزف على آلة موسيقية، أو أداء تمرين رياضي معين بشكل تلقائي.\n\nلزيادة الذاكرة العضلية، يُنصح بالتمارين المنتظمة مع التركيز على الدقة والتكرار. كذلك، تقسيم التمارين إلى مراحل صغيرة وإتقان كل جزء منها يساعد على تعزيز الاستجابة العصبية وتحسين الأداء على المدى الطويل. النوم الجيد والتغذية المتوازنة لهما دور كبير أيضاً في ترسيخ المهارات الحركية داخل الدماغ والجهاز العضلي.',
    imageUrl: 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhR3yAFocDlDECFhg5bByqsUvKJmvJPV7UqloH71GQsAh3ikNfLxRAHy7weOeSv0L05Fl8uv8jBoUqDy4nNRYwaOH0OTl71UXc8T4-jlfyIsc47dUmt09WDdoge8ISCrK4pSPony9Jq3hM/s640/335C85F800000578-3549632-image-m-75_1461153437769.jpg',
    color: Color(0xFFfccd0a),
  ),
];
