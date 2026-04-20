import 'package:flutter/material.dart';
import 'package:uuk/pages/registerPage_Jasta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modul project UUK',
      debugShowCheckedModeBanner: false,
      home: registerPage(),
    );
  }
}
