import 'package:equatable/equatable.dart';

class WritingEntity extends Equatable {
  final String title;
  final String url;

  WritingEntity({required this.title, required this.url});
  @override
  List<Object?> get props => [];
}
