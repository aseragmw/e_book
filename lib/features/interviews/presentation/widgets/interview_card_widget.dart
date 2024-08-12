import 'package:e_book/core/extentions/screen_size.dart';
import 'package:e_book/core/utils/url_launcher.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/books/presentation/screens/book_overview_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_theme.dart';

class InterviewCardWidget extends StatelessWidget {
  final String title;
  final String interviewer;
  final String url;

  const InterviewCardWidget(
      {super.key,
      required this.title,
      required this.url,
      required this.interviewer});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        UrlLauncer.launch(url);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: AppTheme.boxRadius,
            border: Border.all(color: AppTheme.greyHintColor)),
        padding: EdgeInsets.all(context.screenAspectRatio * 5),
        margin: EdgeInsets.symmetric(vertical: context.screenAspectRatio * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: AppTheme.blackColor,
                        fontSize: AppTheme.fontSize18(context),
                        fontWeight: AppTheme.fontWeight700),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppTheme.primayMouveColor,
                  size: context.screenAspectRatio * 15,
                )
              ],
            ),
            Text(
              interviewer,
              style: TextStyle(
                  color: AppTheme.primayMouveColor,
                  fontSize: AppTheme.fontSize18(context),
                  fontWeight: AppTheme.fontWeight700),
            ),
          ],
        ),
      ),
    );
  }
}
