import 'package:flutter/material.dart';
import 'package:motor_avenue/Bookmarks.dart';
import 'package:motor_avenue/Home.dart';
import 'package:motor_avenue/LiveAuction.dart';
import 'package:motor_avenue/Settings.dart';
import 'package:motor_avenue/car_details.dart';
import 'package:motor_avenue/cart.dart';
import 'package:motor_avenue/login.dart';
import 'package:motor_avenue/register.dart';
import 'package:motor_avenue/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: register(),
    );
  }
}