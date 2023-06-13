import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:motor_avenue/Home.dart';
import 'package:motor_avenue/createads.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // runApp(MyApp(token: prefs.getString('token'),));
}

class MyApp extends StatelessWidget {
  // final token;
  const MyApp({
    // @required this.token,
    Key? key,
  }): super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Home(),
      // (token != null && JwtDecoder.isExpired(token) == false )?Home(token: token):login(),
    );
  }
}