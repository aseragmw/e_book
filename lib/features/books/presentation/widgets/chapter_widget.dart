import 'package:e_book/core/extentions/screen_size.dart';
import 'package:e_book/features/books/domain/entities/chapter_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_theme.dart';

class ChapterWidget extends StatelessWidget {
  const ChapterWidget({super.key, required this.chapter});
  final ChapterEntity chapter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.screenAspectRatio*80,),

        Container(
          child: Text(
            chapter.title,
            style: TextStyle(
                fontSize: AppTheme.fontSize24(context),
                fontWeight: AppTheme.fontWeight700,color: AppTheme.greyHintColor),
          ),
        ),
        SizedBox(
          height: context.screenAspectRatio * 5,
        ),
        chapter.subTitle != null ? Text(chapter.subTitle!,style: TextStyle(
            fontSize: AppTheme.fontSize22(context),
            fontWeight: AppTheme.fontWeight700,color: AppTheme.greyHintColor),
        ) : const SizedBox(),
        chapter.subTitle != null ? SizedBox(
        height: context.screenAspectRatio * 5,
    ) : const SizedBox(),
        Container(
            child: Text(
          chapter.Content,
          style: TextStyle(
            height: 2,
              fontSize: AppTheme.fontSize18(context),
              fontWeight: AppTheme.fontWeight700),
        )),
        SizedBox(height: context.screenAspectRatio*30,)
        // Divider(thickness: context.screenAspectRatio*1.5,color: AppTheme.greyHintColor,)
      ],
    );
  }
}
