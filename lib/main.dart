import 'package:flutter/material.dart';
import './ui/Home.dart';
import './ui/onboard.dart';

void main() => runApp(
  MyApp()
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Simple Layout",
        debugShowCheckedModeBanner: false,
        home : OnboardScreen()
    );
  }

}

