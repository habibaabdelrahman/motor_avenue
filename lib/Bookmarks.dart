import 'package:flutter/material.dart';
import 'package:motor_avenue/Home.dart';

class Bookmarks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 800,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(0, 0, 0, 0.96),
                Color.fromRGBO(196, 187, 159, 1.0),
              ],
            ),
          ),

          child: Column(children: [
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
                    color: Colors.black87,
                    padding: const EdgeInsets.only(top: 35, left: 15)),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 250, top: 6,),
                            child: Image.asset(
                              'assets/images/black logoo.png',
                              height: 37,
                              width: 37,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40, top: 5),
                            child: Text(
                              'BOOKMARKS',
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 240, top: 26),
                            child: Icon(
                              Icons.bookmark_outline_sharp,
                              size: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),

            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child:
                  Column(
                      children:[
              Stack(
                  children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 5),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/car 1.png',
                      height: 187,
                      width: 400,
                    ),
                  ),
                ),
                Container(
                    height: 37,
                    width: 63,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 20,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.only(
                      top: 164,
                      left: 328,
                    ),
                    child: TextButton(
                      child: Icon(
                        Icons.remove_shopping_cart_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 255, 255, 0.4)),
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  topLeft: Radius.circular(15)),
                            )),
                      ),
                      onPressed: () {},
                    )),
              ]),
                        Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 5),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/car 1.png',
                                    height: 187,
                                    width: 400,
                                  ),
                                ),
                              ),
                              Container(
                                  height: 37,
                                  width: 63,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 3,
                                        blurRadius: 20,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  margin: const EdgeInsets.only(
                                    top: 164,
                                    left: 328,
                                  ),
                                  child: TextButton(
                                    child: Icon(
                                      Icons.remove_shopping_cart_outlined,
                                      size: 25,
                                      color: Colors.black,
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(
                                          Color.fromRGBO(255, 255, 255, 0.4)),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(15),
                                                topLeft: Radius.circular(15)),
                                          )),
                                    ),
                                    onPressed: () {},
                                  )),
                            ]),
                    ]
    ),
    ),
            ),

            Container(margin: EdgeInsets.only(top: 10),
                height: 40,
                width: 250,
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Icon(
                      Icons.delete,
                      size: 25,
                      color: Colors.black,
                    ),
                    Text(
                      'ALL',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'HIND'),
                    ),
                  ]),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(209, 209, 209, 1)),
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  onPressed: () {},
                )),
            SizedBox(
              height: 10,
            )
          ]),
        ),

    );
  }
}
