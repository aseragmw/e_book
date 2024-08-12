import 'package:e_book/core/extentions/screen_size.dart';
import 'package:e_book/core/utils/app_theme.dart';
import 'package:e_book/core/utils/snackbar_message.dart';
import 'package:e_book/core/widgets/custom_app_bar.dart';
import 'package:e_book/core/widgets/custom_circular_progress_indicator.dart';
import 'package:e_book/core/widgets/main_layout.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_bloc.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_event.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_state.dart';
import 'package:e_book/features/books/presentation/screens/all_books_screen.dart';
import 'package:e_book/features/books/presentation/widgets/book_card_widget.dart';
import 'package:e_book/features/cv/presentation/screens/cv_screen.dart';
import 'package:e_book/features/home/presentation/widgets/Category_card_widget.dart';
import 'package:e_book/features/interviews/presentation/screens/all_interviews_screen.dart';
import 'package:e_book/features/writings/presentation/screens/all_writings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        body: Column(
      children: [

        SizedBox(
          height: context.screenAspectRatio * 10,
        ),
        CategoryCardWidget(
            title: "كتب",
            icon: Icons.menu_book,
            targetScreen: AllBooksScreen()),
        CategoryCardWidget(
            title: "متابعات", icon: Icons.mic, targetScreen: AllInterviewsScreen()),
        CategoryCardWidget(
            title: "دراسات نقدية",
            icon: Icons.library_books,
            targetScreen: AllWritingsScreen()),
        CategoryCardWidget(
            title: "سيرة ذاتية",
            icon: Icons.person,
            targetScreen: CVScreen()),
      ],
    ));
  }
}
