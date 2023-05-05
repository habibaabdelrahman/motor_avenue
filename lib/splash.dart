import 'package:flutter/material.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/download.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.9), BlendMode.darken)),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MOTOR',
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MontserratSubrayada'),
                ),
                SizedBox(width: 10),
                Image.asset(
                  'assets/images/logoo.png',
                  width: 65,
                ),
                SizedBox(width: 10),
                Text(
                  'AVENUE',
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MontserratSubrayada'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
