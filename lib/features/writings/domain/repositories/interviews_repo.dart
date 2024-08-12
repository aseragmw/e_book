import 'package:dartz/dartz.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/interviews/domain/entities/interview_entity.dart';
import '../../../../core/errors/failures.dart';
abstract class InterviewsRepo {
  Future<Either<Failure, List<InterviewEntity>>> getAllInterviews();
}
