import 'package:equatable/equatable.dart';

import 'chapter_entity.dart';

class BookEntity extends Equatable {
    final String title;
    final String authorName;
    final String coverImgUrl;
    final String description;
    final String snippet;
    final List<ChapterEntity>chapters;

  BookEntity({required this.title, required this.authorName, required this.coverImgUrl, required this.description,required this.snippet, required this.chapters});


  @override
  List<Object?> get props => [];

}


