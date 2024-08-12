import 'package:dartz/dartz.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/books/domain/repositories/books_repo.dart';

import '../../../../core/errors/failures.dart';

class GetAllBooksUsecase {
  final BooksRepo booksRepo;

  GetAllBooksUsecase({required this.booksRepo});

  Future<Either<Failure, List<BookEntity>>> call() => booksRepo.getAllBooks();
}
