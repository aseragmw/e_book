import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_book/features/books/data/datasources/books_local_datasource.dart';
import 'package:e_book/features/books/data/repositories/books_repo_impl.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_event.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_state.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/usecases/get_all_books_usecase.dart';


class BooksBloc extends Bloc<BooksEvent, BooksState> {
  BooksBloc() : super(BooksInitial()) {
    on<BooksEvent>((event, emit) {});

    on<GetAllBooksEvent>(
      (event, emit) async {
        emit(GetAllBooksLoadingState());
        GetAllBooksUsecase getAllBooksUsecase = GetAllBooksUsecase(booksRepo: BooksRepoImpl(booksLocalDataSource: BooksLocalDataSourceWithStandardJson()));
        final either = await getAllBooksUsecase.call();
        either.fold((l) {
          emit(GetAllBooksErrorState(message: l.message));
        }, (r) {
          log("fel bloc");
          emit(GetAllBooksSuccessState(books: r));
        });
      },
    );


  }
}
