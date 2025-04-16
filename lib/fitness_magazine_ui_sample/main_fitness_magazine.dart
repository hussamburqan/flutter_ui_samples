import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_ui_samples/fitness_magazine_ui_sample/views/homepage.dart';

class FitnessMagazineApp extends StatelessWidget{
  FitnessMagazineApp({super.key});
  final List<Locale> appSupportedLocales = const [Locale('ar')];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Fitness Magazines',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: Color(0xFF364046),
          )
      ),
      supportedLocales: appSupportedLocales,
      home: FitnessMagazineHomePage(),
    );
  }



}