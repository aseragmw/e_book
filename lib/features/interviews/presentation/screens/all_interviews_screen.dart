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
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllInterviewsScreen extends StatefulWidget {
   AllInterviewsScreen({super.key});

  @override
  State<AllInterviewsScreen> createState() => _AllInterviewsScreenState();
}

class _AllInterviewsScreenState extends State<AllInterviewsScreen> {
  List<InterviewEntity> interviews=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    interviews.add(InterviewEntity(interviewer: "المحاور",title: '''نور الدين برقادي(محاور). "الكاتب المصري د. جمال الجزيري لـ "أصوات الشمال": "صار الفضاء الإلكتروني متنفَّسًا للكتّاب لينشروا فيه كتبهم، بعيدا عن استغلال ناشري الكتب الورقية"". مجلة أصوات الشمال: مجلة عربية ثقافية اجتماعية شاملة.\n 8 مايو 2016.''', url: "http://www.aswat-elchamal.com/ar/?p=98&a=51498"));
    interviews.add(InterviewEntity(interviewer: "المحاور",title: '''نور الدين برقادي(محاور). "الكاتب المصري د. جمال الجزيري لـ "أصوات الشمال": "صار الفضاء الإلكتروني متنفَّسًا للكتّاب لينشروا فيه كتبهم، بعيدا عن استغلال ناشري الكتب الورقية"". مجلة أصوات الشمال: مجلة عربية ثقافية اجتماعية شاملة.\n 8 مايو 2016.''', url: "http://www.aswat-elchamal.com/ar/?p=98&a=51498"));
    interviews.add(InterviewEntity(interviewer: "المحاور",title: '''نور الدين برقادي(محاور). "الكاتب المصري د. جمال الجزيري لـ "أصوات الشمال": "صار الفضاء الإلكتروني متنفَّسًا للكتّاب لينشروا فيه كتبهم، بعيدا عن استغلال ناشري الكتب الورقية"". مجلة أصوات الشمال: مجلة عربية ثقافية اجتماعية شاملة.\n 8 مايو 2016.''', url: "http://www.aswat-elchamal.com/ar/?p=98&a=51498"));
    interviews.add(InterviewEntity(interviewer: "المحاور",title: '''نور الدين برقادي(محاور). "الكاتب المصري د. جمال الجزيري لـ "أصوات الشمال": "صار الفضاء الإلكتروني متنفَّسًا للكتّاب لينشروا فيه كتبهم، بعيدا عن استغلال ناشري الكتب الورقية"". مجلة أصوات الشمال: مجلة عربية ثقافية اجتماعية شاملة.\n 8 مايو 2016.''', url: "http://www.aswat-elchamal.com/ar/?p=98&a=51498"));
    interviews.add(InterviewEntity(interviewer: "المحاور",title: '''نور الدين برقادي(محاور). "الكاتب المصري د. جمال الجزيري لـ "أصوات الشمال": "صار الفضاء الإلكتروني متنفَّسًا للكتّاب لينشروا فيه كتبهم، بعيدا عن استغلال ناشري الكتب الورقية"". مجلة أصوات الشمال: مجلة عربية ثقافية اجتماعية شاملة.\n 8 مايو 2016.''', url: "http://www.aswat-elchamal.com/ar/?p=98&a=51498"));
    interviews.add(InterviewEntity(interviewer: "المحاور",title: '''نور الدين برقادي(محاور). "الكاتب المصري د. جمال الجزيري لـ "أصوات الشمال": "صار الفضاء الإلكتروني متنفَّسًا للكتّاب لينشروا فيه كتبهم، بعيدا عن استغلال ناشري الكتب الورقية"". مجلة أصوات الشمال: مجلة عربية ثقافية اجتماعية شاملة.\n 8 مايو 2016.''', url: "http://www.aswat-elchamal.com/ar/?p=98&a=51498"));

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
            "متابعات",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: AppTheme.fontWeight700,
              fontSize: AppTheme.fontSize24(context),
              color: AppTheme.primayMouveColor,
            ),
          ),
        ),
    ListView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap: true,itemCount: interviews.length,itemBuilder: (context,index){
      final interview = interviews[index];
      return InterviewCardWidget(title: interview.title, url: interview.url, interviewer: interview.interviewer,);
    })
      ],
    ));
  }
}


