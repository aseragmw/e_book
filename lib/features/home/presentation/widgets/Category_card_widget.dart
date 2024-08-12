import 'package:e_book/core/extentions/screen_size.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/books/presentation/screens/book_overview_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_theme.dart';

class CategoryCardWidget extends StatelessWidget {
final String title;
final IconData icon;
final Widget targetScreen;

  const CategoryCardWidget({super.key, required this.title, required this.icon, required this.targetScreen});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => targetScreen));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: AppTheme.boxRadius,
            border: Border.all(color: AppTheme.greyHintColor)),
        padding: EdgeInsets.all(context.screenAspectRatio * 5),
        margin: EdgeInsets.symmetric(vertical: context.screenAspectRatio * 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: Text(
                title,
                style: TextStyle(
                    color: AppTheme.primayMouveColor,
                    fontSize: AppTheme.fontSize22(context),
                    fontWeight: AppTheme.fontWeight700),
              ),
            ),
            Icon(icon,color: AppTheme.blackColor,size: context.screenAspectRatio*15,)
          ],
        ),
      ),
    );
  }
}
