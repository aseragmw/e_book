import 'package:e_book/core/extentions/screen_size.dart';
import 'package:e_book/core/utils/app_theme.dart';
import 'package:e_book/core/widgets/custom_app_bar.dart';
import 'package:e_book/core/widgets/custom_button.dart';
import 'package:e_book/core/widgets/main_layout.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/books/presentation/screens/book_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookOverviewScreen extends StatelessWidget {
  const BookOverviewScreen({super.key, required this.book});
  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        body: Column(
      children: [
        CustomAppBar(
          showBackCursor: true,
        ),
        ClipRRect(child: Image.asset(
          book.coverImgUrl,
          height: context.screenHeight * 0.6,
          fit: BoxFit.fill,
        ),borderRadius: BorderRadius.circular(20),),

        SizedBox(
          height: context.screenAspectRatio * 10,
        ),
        CustomButton(
            title: "إقرأ",
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => BookDetailsScreen(book: book)));
            },
            buttonColor: AppTheme.primayMouveColor,
            borderRadius: AppTheme.boxRadius,
            borderColor: AppTheme.transparentColor,
            buttonWidth: context.screenWidth * 0.7,
            fontSize: AppTheme.fontSize18(context))
      ],
    ));
  }
}
