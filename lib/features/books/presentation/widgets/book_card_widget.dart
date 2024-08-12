import 'package:e_book/core/extentions/screen_size.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/books/presentation/screens/book_overview_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_theme.dart';

class BookCardWidget extends StatelessWidget {
  const BookCardWidget({super.key, required this.book});
  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => BookOverviewScreen(book: book)));
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
                book.title,
                style: TextStyle(
                    color: AppTheme.primayMouveColor,
                    fontSize: AppTheme.fontSize22(context),
                    fontWeight: AppTheme.fontWeight700),
              ),
            ),
            Image.asset(
              book.coverImgUrl,
              height: context.screenAspectRatio * 50,
              width: context.screenAspectRatio * 35,
            )
          ],
        ),
      ),
    );
  }
}
