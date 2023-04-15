import 'package:flutter/material.dart';
//import 'package:graduation_project/splash.dart';
//import 'package:graduation_project/Home.dart';
import 'package:graduation_project/car_details.dart';
import 'package:graduation_project/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: car_details(),
    );
  }
}