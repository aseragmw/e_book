import 'package:e_book/core/extentions/screen_size.dart';
import 'package:e_book/core/utils/app_theme.dart';
import 'package:e_book/core/utils/snackbar_message.dart';
import 'package:e_book/core/widgets/custom_app_bar.dart';
import 'package:e_book/core/widgets/custom_circular_progress_indicator.dart';
import 'package:e_book/core/widgets/main_layout.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_bloc.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_event.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_state.dart';
import 'package:e_book/features/books/presentation/widgets/book_card_widget.dart';
import 'package:e_book/features/interviews/domain/entities/interview_entity.dart';
import 'package:e_book/features/interviews/presentation/widgets/interview_card_widget.dart';
import 'package:e_book/features/writings/presentation/widgets/writing_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/writing_entity.dart';

class AllWritingsScreen extends StatefulWidget {
   AllWritingsScreen({super.key});

  @override
  State<AllWritingsScreen> createState() => _AllWritingsScreenState();
}

class _AllWritingsScreenState extends State<AllWritingsScreen> {
  List<WritingEntity> writings=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    writings.add(WritingEntity(title: '''توظيف التقنيات السينمائية في القصة القصيرة جدا''', url: "https://dakhaer.islamanar.com/use-cinematic-techniques-in-story/"));

  }

  @override
  Widget build(BuildContext context) {


    return MainLayout(
      singleChild: true,
        body: Column(
      children: [
        CustomAppBar(
          showBackCursor: true,
          title: Text(
            "دراسات نقدية",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: AppTheme.fontWeight700,
              fontSize: AppTheme.fontSize24(context),
              color: AppTheme.primayMouveColor,
            ),
          ),
        ),
    ListView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap: true,itemCount: writings.length,itemBuilder: (context,index){
      final interview = writings[index];
      return WritingCardWidget(title: interview.title, url: interview.url);
    })
      ],
    ));
  }
}


