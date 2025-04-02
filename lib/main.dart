import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techblog/my_color.dart';
import 'package:techblog/splash_scrren.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: solidColors.statusBarColor,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: solidColors.systemNavigationBarColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      locale: Locale('fa',' '),
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa',' '), // Persian
      ],

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Dana',
        brightness: Brightness.light,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Dana',
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: solidColors.posterTitle,
          ),
          titleMedium: TextStyle(
            fontFamily: 'Dana',
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: solidColors.postersubTitle,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Dana',
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Dana',
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Dana',
            fontSize: 14,
            color: Color.fromARGB(255, 53, 53, 53),
            fontWeight: FontWeight.w700,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Dana',
            fontSize: 14,
            color: Color.fromARGB(255, 70, 70, 70),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      home: splashScrren(),
    );
  }
}
