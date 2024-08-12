import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:e_book/core/errors/failures.dart';
import 'package:e_book/features/books/data/datasources/books_local_datasource.dart';
import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/books/domain/repositories/books_repo.dart';
import 'package:e_book/features/interviews/data/datasources/Interviews_local_datasource.dart';
import 'package:e_book/features/interviews/domain/entities/interview_entity.dart';
import 'package:e_book/features/interviews/domain/repositories/interviews_repo.dart';
class InterviewsRepoImpl extends InterviewsRepo {
  final InterviewsLocalDataSource interviewsLocalDataSource;
  InterviewsRepoImpl({required this.interviewsLocalDataSource});


  @override
  Future<Either<Failure, List<InterviewEntity>>> getAllInterviews() async{
    try {
      final val = await interviewsLocalDataSource.getAllInterviews();
      return Right(val);
    } catch (e) {
      log(e.toString());
      return const Left(Failure(message: 'Error Getting Interviews'));
    }
  }
}
