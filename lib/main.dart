import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popo_app/pages/mainpage.dart';
import 'package:splashscreen/splashscreen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POPO',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white, foregroundColor: Colors.black),
        bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
      ),
      home: const SplashScreenPage(),
    );
  }
}

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: const MainPage(),
      backgroundColor: Colors.white,
      image: Image.asset('assets/images/popo_diary_logo.png'),
      photoSize: 200,
      loaderColor:const Color(0xffDEF5F4),
    );
  }
}

