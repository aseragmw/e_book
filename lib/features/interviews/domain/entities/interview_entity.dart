import 'package:equatable/equatable.dart';

class InterviewEntity extends Equatable {
  final String title;
  final String url;
  final String interviewer;

  InterviewEntity( {required this.title, required this.url,required this.interviewer,});
  @override
  List<Object?> get props => [];
}
