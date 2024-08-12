import 'dart:async';
import 'package:e_book/core/extentions/screen_size.dart';
import 'package:e_book/core/utils/app_theme.dart';
import 'package:e_book/core/widgets/main_layout.dart';
import 'package:e_book/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) =>
                HomeScreen()), // Replace with your main screen widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      bgColor: AppTheme.primayMouveColor,
      bgUrl:'assets/splash_bg.png',
      body: SizedBox(
      height: context.screenHeight,
      width: context.screenWidth,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset(
                  'assets/cv.jpeg',
                  height: context.screenWidth*0.8,
                  width:context.screenWidth*0.8 ,
                  fit: BoxFit.fill,
                )), // Replace with your splash screen image
            SizedBox(height: context.screenAspectRatio * 20),
            Text(
              "د. جمال الجزيري",
              style: TextStyle(
                  fontSize: AppTheme.fontSize28(context),
                  fontWeight: AppTheme.fontWeight700,
                  color: AppTheme.whiteColor),
            ),
            // Optional: Add a loading indicator
          ],
        ),
      ),
    ),);



  }
}
