import 'package:flutter/material.dart';
import 'package:motor_avenue/Home.dart';
import 'package:motor_avenue/LiveAuction.dart';
import 'package:motor_avenue/Settings.dart';
import 'package:motor_avenue/car_details.dart';
import 'package:motor_avenue/login.dart';
import 'package:motor_avenue/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Home(),
    );
  }
}