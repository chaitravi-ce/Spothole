import 'package:flutter/material.dart';
import 'package:spothole/screens/homeScreen.dart';
import './screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spothole',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xff1e0233),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 32, fontWeight: FontWeight.w600)
        ),
        canvasColor: const Color(0xffe7d3cc),
        backgroundColor: const Color(0xff342d50),
        cardColor: const Color(0xff895575),
      ),
      home: const SplashScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => const HomeScreen(),
      },
    );
  }
}
