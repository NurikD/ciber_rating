import 'package:ciber_rating/presentation/auth.dart';
import 'package:ciber_rating/presentation/registration.dart';
import 'package:flutter/material.dart';
import 'package:ciber_rating/presentation/home.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes:{
        '/home': (context) => Home(),
        '/signUp': (context) => const signUp(),
        '/auth': (context) => const authPage(),
      }
    );
  }
}