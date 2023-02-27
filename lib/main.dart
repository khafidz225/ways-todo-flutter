import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ways_todo/screen/homepage.dart';
import 'package:ways_todo/screen/auth/login.dart';
import 'package:ways_todo/navigationBar.dart';
import 'package:ways_todo/screen/auth/register.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(),
        '/login': (context) => const Login(),
        '/register': (context) => Register(),
        '/navigatorbar': (context) => const NavigatorBar()
      },
    );
  }
}
