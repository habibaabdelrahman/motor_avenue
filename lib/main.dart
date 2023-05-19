import 'package:flutter/material.dart';
import 'package:motor_avenue/Live_Car_Details.dart';
import 'package:motor_avenue/checkout.dart';
import 'package:motor_avenue/login.dart';
import 'package:motor_avenue/register.dart';
import 'package:motor_avenue/createads.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Live_Car_Details(),
    );
  }
}