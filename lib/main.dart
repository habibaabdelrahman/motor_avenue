import 'package:flutter/material.dart';
import 'package:motor_avenue/checkout.dart';
import 'package:motor_avenue/checkout3.dart';
import 'package:motor_avenue/register.dart';
import 'package:motor_avenue/createads.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:motor_avenue/setting2.dart';

import 'checkout2.dart';

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
      home: checkout2(),
    );
  }
}