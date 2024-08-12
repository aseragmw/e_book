import 'package:flutter/material.dart';

import '../utils/app_theme.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: CircularProgressIndicator(

        color:color ?? AppTheme.whiteColor,
      ),
    );
  }
}
