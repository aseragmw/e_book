import 'package:e_book/core/extentions/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_theme.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({
    super.key,
    required this.body,
    this.bottomNavBar,
    this.floatingActionButtonLocation,
    this.floatingActionButton,
    this.singleChild,
    this.bgColor,
    this.bgUrl,
  });

  final Widget body;
  final Widget? bottomNavBar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? floatingActionButton;
  final bool? singleChild;
  final Color? bgColor;
  final String? bgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: floatingActionButtonLocation ??
          FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNavBar,
      floatingActionButton: floatingActionButton,
      backgroundColor: bgColor ?? AppTheme.whiteColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SizedBox(
            height: context.screenHeight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                context.screenWidth * 0.05,
                context.screenWidth * 0.04,
                context.screenWidth * 0.05,
                context.screenHeight * 0.03 * 0,
              ),
              child: Stack(children: [
                Positioned(
                    bottom: context.screenHeight * 0.01,
                    left: context.screenWidth * 0.0,
                    child: Opacity(
                        opacity: 0.15,
                        child: Image.asset(
                          bgUrl??'assets/bg.png',
                          width: context.screenWidth ,
                          height: context.screenHeight,
                          fit: BoxFit.fill,
                        ))),
                singleChild == true ? SingleChildScrollView(child: body) : body,
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
