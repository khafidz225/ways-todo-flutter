import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ways_todo/homepage.dart';

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
      routes: {'/': (context) => const homepage()},
    );
  }
}
