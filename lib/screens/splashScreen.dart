import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spothole/screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  static const routeName = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
      const Duration(seconds: 5), 
      () => Navigator.of(context).pushReplacementNamed(HomeScreen.routeName)
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("FOtntomo"),
    );
  }
}