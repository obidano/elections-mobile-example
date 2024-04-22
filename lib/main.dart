import 'package:elections/pages/intro/introPage.dart';
import 'package:elections/pages/login/loginPage.dart';
import 'package:elections/pages/periodes/periodePage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MonApplication());
}

class MonApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage()
    );
  }

}