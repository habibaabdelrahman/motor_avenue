import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  final _controllar = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //background color
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
                    onPressed: () {},
                    iconSize: 32,
                    color: Colors.black87,
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
                              'assets/images/black logoo.png',
                              height: 37,
                              width: 37,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40.5, top: 4),
                            child: Text(
                              'CART',
                              style: TextStyle(
                                fontSize: 37,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 130, top: 26),
                            child: Icon(
                              Icons.shopping_cart,
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
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
                    top: 149,
                    left: 309,
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
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
                    top: 149,
                    left: 309,
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
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
                    top: 149,
                    left: 309,
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
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
                    top: 149,
                    left: 309,
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
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
                    top: 149,
                    left: 309,
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
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
                    top: 149,
                    left: 309,
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
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
                    top: 149,
                    left: 309,
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
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
                    top: 149,
                    left: 309,
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
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
                    top: 149,
                    left: 309,
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
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
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
                    top: 149,
                    left: 309,
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
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 40,
                      width: 205,
                      child: ElevatedButton(
                        child: const Text(
                          'PROCEED TO CHECHKOUT',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'HIND'),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.amber),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                        ),
                        onPressed: () {},
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      height: 40,
                      width: 65,
                      child: TextButton(
                        child: Row(children: [
                          Icon(
                            Icons.delete,
                            size: 20,
                            color: Colors.black,
                          ),
                          Text(
                            'ALL',
                            style: TextStyle(
                                fontSize: 15,
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
                ]),
            SizedBox(
              height: 10,
            )
          ]),
        ),
      ),
    );
  }
}