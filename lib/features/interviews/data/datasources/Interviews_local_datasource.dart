import 'dart:developer';

import 'package:e_book/features/books/domain/entities/book_entity.dart';
import 'package:e_book/features/books/domain/entities/chapter_entity.dart';
import 'package:e_book/features/interviews/domain/entities/interview_entity.dart';


 abstract class InterviewsLocalDataSource {
  Future<List<InterviewEntity>> getAllInterviews();

}

class InterviewsLocalDataSourceWithStandardJson extends InterviewsLocalDataSource {


  @override
  Future<List<InterviewEntity>> getAllInterviews() {
    // TODO: implement getAllInterviews
    throw UnimplementedError();
  }

}
