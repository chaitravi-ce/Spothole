import 'package:flutter/material.dart';
import 'package:spothole/screens/homeScreen.dart';
import './screens/splashScreen.dart';
import './screens/mapScreen.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primaryColor: const Color(0xff720e2d),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
          headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)
        ),
        canvasColor: const Color(0xffd1ad96),
        backgroundColor: const Color(0xff976741),
        cardColor: const Color(0xffd69b3d),
        accentColor: const Color(0xffdc6f76),
        cursorColor: const Color(0xffd6023b)
      ),
      home: const SplashScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        MapScreen.routeName: (ctx) => const MapScreen()
      },
    );
  }
}
