import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/mainscrren.dart';
import 'package:techblog/my_color.dart';

class splashScrren extends StatefulWidget {
  const splashScrren({super.key});

  @override
  State<splashScrren> createState() => _splashScrrenState();
}

class _splashScrrenState extends State<splashScrren> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => Mainscrren()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: Assets.images.splash.provider(),height: 64),
              SizedBox(height: 32),
              SpinKitFoldingCube(
                color: solidColors.primeryColor,
                size: 32,
              ),
            ],
          ),
        ),
      
      ),
    );
  }
}