import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techblog/splash_scrren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', ''), // Persian
      ],

      theme: ThemeData(
        fontFamily: 'Dana',
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Dana',
            fontSize: 24,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Dana',
            fontSize: 16,
            color: Colors.black,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Dana',
            fontSize: 20,
            color: Colors.black,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Dana',
            fontSize: 18,
            color: Colors.black,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Dana',
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),

      home: splashScrren(),
    );
  }
}
