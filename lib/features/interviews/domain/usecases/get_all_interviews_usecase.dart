import 'package:dartz/dartz.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/books/domain/repositories/books_repo.dart';
import 'package:e_book/features/interviews/domain/entities/interview_entity.dart';
import 'package:e_book/features/interviews/domain/repositories/interviews_repo.dart';

import '../../../../core/errors/failures.dart';

class GetAllInterviewsUsecase {
  final InterviewsRepo interviewsRepo;

  GetAllInterviewsUsecase(this.interviewsRepo);


  Future<Either<Failure, List<InterviewEntity>>> call() => interviewsRepo.getAllInterviews();
}
