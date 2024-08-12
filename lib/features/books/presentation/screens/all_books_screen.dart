import 'package:e_book/core/extentions/screen_size.dart';
import 'package:e_book/core/utils/app_theme.dart';
import 'package:e_book/core/utils/snackbar_message.dart';
import 'package:e_book/core/widgets/custom_app_bar.dart';
import 'package:e_book/core/widgets/custom_circular_progress_indicator.dart';
import 'package:e_book/core/widgets/main_layout.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_bloc.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_event.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_state.dart';
import 'package:e_book/features/books/presentation/widgets/book_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllBooksScreen extends StatelessWidget {
  const AllBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BooksBloc>().add(GetAllBooksEvent());
    return MainLayout(
        body: Column(
      children: [
        CustomAppBar(
          showBackCursor: true,
          title: Text(
            "كتب",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: AppTheme.fontWeight700,
              fontSize: AppTheme.fontSize24(context),
              color: AppTheme.primayMouveColor,
            ),
          ),
        ),
        BlocConsumer<BooksBloc, BooksState>(builder: (context, state) {
          if (state is GetAllBooksLoadingState) {
            return CustomCircularProgressIndicator(
              color: AppTheme.blackColor,
            );
          } else if (state is GetAllBooksSuccessState) {
            return ListView.builder(shrinkWrap: true,itemCount: state.books.length,itemBuilder: (context,index){
              final book = state.books[index];
              return BookCardWidget(book: book);
            },);
          } else {
            return const SizedBox();
          }
        }, listener: (context, state) {
          if (state is GetAllBooksErrorState) {
            SnackBarMessage.showErrorSnackBar(
                message: state.message, context: context);
          }
        })
      ],
    ));
  }
}
