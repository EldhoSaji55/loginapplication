import 'package:flutter/material.dart';
import 'package:loginapplication/login_screen/loginscreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen(),
    );
  }
}
