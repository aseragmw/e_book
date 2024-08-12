import 'package:dartz/dartz.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import '../../../../core/errors/failures.dart';
abstract class BooksRepo {
  Future<Either<Failure, List<BookEntity>>> getAllBooks();
}
