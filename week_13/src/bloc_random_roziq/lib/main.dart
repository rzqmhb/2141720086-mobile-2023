import 'package:bloc_random_roziq/random_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC Roziq',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const RandomScreen(),
    );
  }
}