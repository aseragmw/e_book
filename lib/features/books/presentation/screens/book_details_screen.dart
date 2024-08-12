import 'package:e_book/core/extentions/screen_size.dart';
import 'package:e_book/core/utils/app_theme.dart';
import 'package:e_book/core/widgets/custom_app_bar.dart';
import 'package:e_book/core/widgets/main_layout.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/books/presentation/widgets/chapter_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.book});
  final BookEntity book;

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: AppTheme.primayMouveColor,
          border: Border.all(color: AppTheme.primayMouveColor),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: _scrollToTop,
          icon: Icon(
            Icons.keyboard_double_arrow_up,
            size: context.screenAspectRatio * 20,
            color: AppTheme.whiteColor,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          CustomAppBar(
            showBackCursor: true,
            title: Text(
              widget.book.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: AppTheme.fontWeight700,
                fontSize: AppTheme.fontSize24(context),
                color: AppTheme.primayMouveColor,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              // scrollDirection: Axis.horizontal,
              itemCount: widget.book.chapters.length,
              itemBuilder: (context, index) {
                final chapter = widget.book.chapters[index];
                return ChapterWidget(
                  chapter: chapter,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
