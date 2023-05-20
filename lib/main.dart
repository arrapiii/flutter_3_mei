import 'package:flutter/material.dart';
import 'package:flutter_3_mei/data.dart';
import 'homepage.dart' as HomePage;
import 'profile.dart' as ProfilePage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
    );
  }
}