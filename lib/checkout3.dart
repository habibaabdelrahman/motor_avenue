import 'package:flutter/material.dart';

class checkout3 extends StatelessWidget {
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
                      margin: const EdgeInsets.only(top: 55),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 250,
                              top: 6,
                            ),
                            child: Image.asset(
                              'assets/images/black logoo.png',
                              height: 37,
                              width: 37,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 35, top: 4),
                            child: Text(
                              ' CHECKOUT',
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 215, top: 23),
                            child: Icon(
                              Icons.add_shopping_cart_outlined,
                              size: 16,
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
            Center(
              child: Align(
                alignment: Alignment.center,
                child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.looks_one_sharp),
                  Text(
                    'SHIPPING',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    height: 45,
                    thickness: 2,
                    indent: 15,
                    endIndent: 15,
                    color: Colors.white,
                  ),
                  Icon(Icons.three_k),
                  Text(
                    'PAYMENT',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    height: 45,
                    thickness: 2,
                    indent: 15,
                    endIndent: 15,
                    color: Colors.white,
                  ),
                  Icon(Icons.looks_two),
                  Text(
                    'REVIEW',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'PLEASE CHOOSE A PAYMENT METHOD',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You will not be charged until you review this ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'order on the next page',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              child: Column(children: [

                Container(

                  margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)
                    ),
                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                  ),

                  child: Column(
                    children: [
                      Stack(
                        children: [

                          Padding(padding:EdgeInsets.only(left: 0),

                            child:Icon(
                              Icons.attach_money,
                              size: 30,
                              color: Colors.black,
                            ),

                          ),
                          Padding(padding:EdgeInsets.only(left: 30),

                            child:Text(
                              'PAYMENT',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),

                          ),
                          Padding(padding:EdgeInsets.only(left: 30,top: 20),

                            child:Text(
                              'METHOD',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
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
                              top: 145,
                              left: 290,
                            ),
                            child: TextButton(
                              child: Icon(
                                Icons.slideshow_rounded,
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
                      Center(
                        child: Text(
                          'OR',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'HIND'),
                        ),
                      ),

                      Center(
                        child: Container(
                            alignment: Alignment.center,
                            height: 100,
                            width: 110,
                            child: TextButton(
                              child: Row(children: [
                                Icon(
                                  Icons.add_card,
                                  size: 45,
                                  color: Colors.black,
                                ),
                                Stack(
                                    children:[
                                      Padding(padding:EdgeInsets.only(left:15),
                                        child: Text(
                                          'ADD',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'HIND'),
                                        ),
                                      ),
                                      Padding(padding:EdgeInsets.only(top:12,left: 10),
                                        child: Text(
                                          'CARD',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'HIND'),
                                        ),
                                      ),
                                    ]
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
                      ),
                      Center(
                        child: Container(
                            alignment: Alignment.center,
                            height: 100,
                            width: 200,
                            child: TextButton(
                              child: Row(children: [
                                Icon(
                                  Icons.save,
                                  size: 45,
                                  color: Colors.black,
                                ),
                                Stack(
                                    children:[
                                      Padding(padding:EdgeInsets.only(left:5),
                                        child: Text(
                                          'SAVE PAYMENT',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'HIND'),
                                        ),
                                      ),
                                      Padding(padding:EdgeInsets.only(top:12,left: 5),
                                        child: Text(
                                          'METHOD',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'HIND'),
                                        ),
                                      ),
                                    ]
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
                      ),

                    ],
                  ),




                ),

                Container(
                    height: 50,
                    width: 200,
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    child: ElevatedButton(
                      child: const Text(
                        'Next',
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
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
