import 'package:book_my_place/screens/search_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Booking App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
