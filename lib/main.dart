
import 'package:flutter/material.dart';
import '../../../ecom_home_screen.dart';
// import 'package:todo_app/ecom_home_screen.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joe Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 57, 79, 245)),
        useMaterial3: false,
      ),
      home: EComHomeScreen()
    );
  }
}