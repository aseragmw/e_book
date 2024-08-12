import 'package:e_book/core/widgets/splash_screen.dart';
import 'package:e_book/features/books/presentation/bloc/bloc/books_bloc.dart';
import 'package:e_book/features/books/presentation/screens/all_books_screen.dart';
import 'package:e_book/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:[
          BlocProvider(create: (_)=>BooksBloc())
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('ar'),
          ],
          locale: const Locale('ar'),
          debugShowCheckedModeBanner: false,
          title: 'E-Books',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            fontFamily: "Cairo"
          ),
          home:  SplashScreen(),
        ));
  }
}

