import 'package:calculator/pages/calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      // deactivate debug banner 
      debugShowCheckedModeBanner: false,
      // makes white screen
      home: Calculator(), 
    );
  }
}