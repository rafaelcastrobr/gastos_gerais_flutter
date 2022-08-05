import 'package:flutter/material.dart';
import 'package:gastos_gerais_flutter/screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Projeto Evo',
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}
