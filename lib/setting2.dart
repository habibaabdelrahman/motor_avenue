import 'package:flutter/material.dart';

import 'Home.dart';
class setting2 extends StatelessWidget {
  const setting2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:Container(

  decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(0, 0, 0, 0.96),
        Color.fromRGBO(196, 187, 159, 1.0),
      ],
    ),
  ),
  child:
  Column(

    children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
              },
              iconSize: 32,
              color: Colors.white,
              padding: const EdgeInsets.only(top: 60, left: 15)),
          Expanded(
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 150, top: 6),
                      child: Image.asset(
                        'assets/images/logo white.png',
                        height: 37,
                        width: 37,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40.5, top: 4),
                      child: Text(
                        'SETTINGS',
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Hind',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 214, top: 26),
                      child: Icon(
                        Icons.settings_outlined,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Stack(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 13),
              child: Text(
                'CHANGE PASSWORD',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Hind',
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 195, top: 13),
              child: Icon(
                Icons.privacy_tip_outlined,
                size: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 3,
      ),
      Container(
        width: 360,
        height: 630,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
        ),
        child:
    Column(
    children:[
        Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 28, top: 21),
              child: Positioned(
                  child: Text(
                    'TAKE',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.white,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 38),
              child: Container(
                  child: const Text(
                    'CONTROL',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.white,
                    ),
                  )),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 28, top: 54),
              child: Container(
                  child: const Text(
                    'OF',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.white,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 69),
              child: Container(
                  child: const Text(
                    'SECURITY',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.white,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110, top: 70),
              child: Container(
                  child: const Icon(
                    Icons.lock_outline_rounded,
                    size: 20,
                    color: Colors.white,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child:


              VerticalDivider(
                width: 20,
                indent: 25,
                endIndent: 25,
                thickness: 2,
                color: Colors.white,
              ),
            ),






          ],
        ),

       Stack(
          children: [
            Divider(
              height: 45,
              thickness: 2,
              indent: 23,
              endIndent: 20,
              color: Colors.white,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 30,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:
                      Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 20,
                      offset: Offset(0,
                          3), // changes position of shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(
                    top: 21, left: 15),
                child: Container(
                    padding: EdgeInsets.only(
                        top: 7, left: 15, right: 5),
                    child: Text('OLD PASSWORD',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ))),
              ),
            ),
          ],
        ),
        Container(
          width: 320,
          height: 60,
          margin: const EdgeInsets.only(top: 15),
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.white),
              ),
            ),
          ),

        ),
      SizedBox(height: 5,),
      Stack(
        children: [
          Divider(
            height: 45,
            thickness: 2,
            indent: 23,
            endIndent: 20,
            color: Colors.white,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 30,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color:
                    Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 20,
                    offset: Offset(0,
                        3), // changes position of shadow
                  ),
                ],
              ),
              margin: const EdgeInsets.only(
                  top: 21, left: 15),
              child: Container(
                  padding: EdgeInsets.only(
                      top: 7, left: 15, right: 5),
                  child: Text('NEW PASSWORD',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ))),
            ),
          ),
        ],
      ),

      Container(
        width: 320,
        height: 60,
        margin: const EdgeInsets.only(top: 15),
        child: TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.white),
            ),
          ),
        ),

      ),
      SizedBox(height: 5,),
      Stack(
        children: [
          Divider(
            height: 45,
            thickness: 2,
            indent: 23,
            endIndent: 20,
            color: Colors.white,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 30,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color:
                    Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 20,
                    offset: Offset(0,
                        3), // changes position of shadow
                  ),
                ],
              ),
              margin: const EdgeInsets.only(
                  top: 21, left: 15),
              child: Container(
                  padding: EdgeInsets.only(
                      top: 7, left: 15, right: 5),
                  child: Text('RETYPE PASSWORD',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ))),
            ),
          ),
        ],
      ),

      Container(
        width: 320,
        height: 60,
        margin: const EdgeInsets.only(top: 15),
        child: TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.white),
            ),
          ),
        ),

      ),

      Container(
          height: 50,
          width: 340,
          margin: const EdgeInsets.only(top: 75, bottom: 20),
          child: ElevatedButton(
            child: const Text(
              'SUBMIT',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MontserratSubrayada'),
            ),
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.amber),
              foregroundColor:
              MaterialStateProperty.all<Color>(Colors.black),
              shape:
              MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            onPressed: () {},
          )),
  ]
      ),


  ),


    ],


  )

  ,


),


    );
  }
}