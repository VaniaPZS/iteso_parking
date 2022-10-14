import 'package:flutter/material.dart';
import 'package:iteso_parking/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(6, 39, 84, 255))),
      title: 'Material App',
      home: HomePage(),
    );
  }
}
