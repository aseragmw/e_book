import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:e_book/core/errors/failures.dart';
import 'package:e_book/features/books/data/datasources/books_local_datasource.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/books/domain/repositories/books_repo.dart';
class BooksRepoImpl extends BooksRepo {
  final BooksLocalDataSource booksLocalDataSource;
  BooksRepoImpl({required this.booksLocalDataSource});


  @override
  Future<Either<Failure, List<BookEntity>>> getAllBooks() async{
    try {
      final val = await booksLocalDataSource.getAllBooks();
      return Right(val);
    } catch (e) {
      log(e.toString());
      return const Left(Failure(message: 'Error Getting Books'));
    }
  }
}
