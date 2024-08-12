import 'package:e_book/core/extentions/screen_size.dart';
import 'package:flutter/material.dart';

import '../utils/app_theme.dart';
class CustomAppBar extends StatelessWidget {
  final Widget? title;
  final bool? showBackCursor;
  final Widget? trailingWidget;

  const CustomAppBar(
      {super.key, this.title, this.showBackCursor, this.trailingWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: context.screenAspectRatio*5),
      child: Stack(children: [
        Align(
          alignment: Alignment.centerRight,
          child: (showBackCursor != null && showBackCursor == true)
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: AppTheme.blackColor,
                    size: context.screenAspectRatio * 15,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              : const SizedBox(),
        ),
        Align(alignment: Alignment.center, child: Container(width: context.screenWidth*0.5,child: title)),
        Align(
          alignment: Alignment.centerLeft,
          child: trailingWidget ?? const SizedBox(),
        )
      ]),
    );
  }
}
