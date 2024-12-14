import 'package:flutter/material.dart';
import 'package:dsoc_week1/pages/home.dart';
import 'package:dsoc_week1/pages/login.dart';
import 'package:dsoc_week1/pages/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => Home(),
      '/login' : (context) => LoginScreen(),
      '/signup' : (context) => SignupScreen()
    },
  ));
}

