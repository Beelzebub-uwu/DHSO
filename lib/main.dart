import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final Color _primarySwatch = Colors.black87;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DHSO',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black54,
        //primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        backgroundColor: const Color(0xFF212121),
        accentColor: Colors.black54,
        accentIconTheme: const IconThemeData(color: Colors.black),
        dividerColor: Colors.black12,
      ),
      home: const MyHomePage(title: 'DHSO'),
    );
  }
}
