import 'package:flutter/material.dart';
import 'package:stockandbuy/pages/home_page.dart';
import 'package:stockandbuy/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'ClashDisplay',
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
