import 'package:flutter/material.dart';
import 'package:task/scr/home_scr.dart';
import 'package:task/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
        scaffoldBackgroundColor: MyColor.primaryColor,
      ),
      home: const MyHomePage(),
    );
  }
}
