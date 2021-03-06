import 'package:flutter/material.dart';
import 'package:health_care/login/login_page.dart';
import 'package:health_care/login/welcome_page.dart';
import 'package:health_care/main/department_list_screen.dart';
import 'package:health_care/main/department_page.dart';
import 'package:health_care/main/home_screen.dart';
import 'package:health_care/splash_screen.dart';
import 'package:health_care/test_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Airconditional',
      home: SafeArea(
        // child: SplashScreen(),
        // child: HomeScreen(),
        child: TestScreen(),
      ),
    );
  }
}
