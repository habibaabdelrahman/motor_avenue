import 'package:flutter/material.dart';
class checkoutfour extends StatefulWidget {
  const checkoutfour({Key? key}) : super(key: key);

  @override
  State<checkoutfour> createState() => _checkoutfourState();
}

class _checkoutfourState extends State<checkoutfour> {
  double containerHeight = 60;
  double containerWidth = 172.5;
  bool showText = false;
  bool _showFristConatiner = true;

  void _toggleWidth() {
    setState(() {
      containerHeight = containerHeight == 60.0 ? 440.0 : 60.0;
      containerWidth = containerWidth == 172.5 ? 345.0 : 172.5;
      showText = !showText;
      _showFristConatiner = !_showFristConatiner;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 15,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'PLEASE CONFIRM AND SUBMIT YOUR ORDER',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Hind',
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "By clicking submit order,you agree to Motor Avenue's" ,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Hind',
                color: Color.fromRGBO(207, 207, 207, 1),
              ),
            ),
          ),
        ),
        SizedBox(height: 3,),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 31),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Terms of use',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor:Color.fromRGBO(207, 207, 207, 1) ,
                    decorationThickness: 2.0,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Color.fromRGBO(207, 207, 207, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  ' and ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Color.fromRGBO(207, 207, 207, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor:Color.fromRGBO(207, 207, 207, 1) ,
                    decorationThickness: 2.0,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Color.fromRGBO(207, 207, 207, 1),
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 30,),
        Column(
          children: [
            GestureDetector(
              onTap: _toggleWidth,
              child: Stack(
                  children: [
                    if (!showText)
                      Container(
                        width: 345,
                        height: 60,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.grey,
                        ),

                        child: Container(
                          alignment: Alignment.centerRight,
                          child:
                          Padding(padding: EdgeInsets.only(right: 5),

                            child:Icon(
                              Icons.add_card,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    AnimatedContainer(
                      width: containerWidth,
                      height:  containerHeight,
                      decoration: const BoxDecoration(
                        borderRadius:BorderRadius.all(Radius.circular(15),),
                        color: Colors.white,
                      ),
                      duration: Duration(milliseconds: 500),
                      child:_showFristConatiner ? fristConatiner() : secondContainer(),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Stack(
          children: [
            Container(
              width: 345,
              height: 155,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.grey,
              ),
              child: Padding(padding:EdgeInsets.only(top: 80,left: 20),
                child:Column(
                    children:[
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              'NAME',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Hind',
                                color: Color.fromRGBO(79, 79, 79, 1.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60,),
                            child: Text(
                              'SAEED TAIMOOR',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              'Street',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Hind',
                                color: Color.fromRGBO(79, 79, 79, 1.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60,),
                            child: Text(
                              '1313 wolf pen road',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]
                ),
              ),

            ),
            Container(
              width: 345,
              height: 60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white,
              ),
              child:Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:1,left: 10),
                    child: Text(
                      'SHIPING ADDRES',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(padding:EdgeInsets.only(left: 140),
                    child:Container(
                      width: 60,
                      height: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.grey,
                      ),
                      child: TextButton(onPressed:(){}, child:Text(
                        'EDIT',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Hind',
                          color: Colors.black,
                        ),
                      ), ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Stack(
          children: [
            Container(
              width: 345,
              height: 180,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.grey,
              ),
              child: Padding(padding:EdgeInsets.only(top: 80,left: 20),
                child:Column(
                    children:[
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              'Subtotal',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Hind',
                                color: Color.fromRGBO(79, 79, 79, 1.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60,),
                            child: Text(
                              '3,000,000,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              'Delivery',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Hind',
                                color: Color.fromRGBO(79, 79, 79, 1.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 55,),
                            child: Text(
                              '300,000,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Hind',
                                color: Color.fromRGBO(79, 79, 79, 1.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 80,),
                            child: Text(
                              '3,300,000,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]
                ),
              ),

            ),
            Container(
              width: 345,
              height: 60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white,
              ),
              child:Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:1,left: 10),
                    child: Text(
                      'ORDER SUMMARY',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.black,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            // Container(
            //     height: 50,
            //     width: 350,
            //     margin: const EdgeInsets.only(top: 230, bottom: 20),
            //     child: ElevatedButton(
            //       child: const Text(
            //         'SUBMIT',
            //         style: TextStyle(
            //             fontSize: 19,
            //             fontWeight: FontWeight.bold,
            //             fontFamily: 'MontserratSubrayada'),
            //       ),
            //       style: ButtonStyle(
            //         backgroundColor:
            //         MaterialStateProperty.all<Color>(Colors.amber),
            //         foregroundColor:
            //         MaterialStateProperty.all<Color>(Colors.black),
            //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //             RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(10))),
            //       ),
            //       onPressed: goToNextStep,
            //     )),
          ],
        ),
      ],
    );
  }
}

class fristConatiner extends StatelessWidget {
  const fristConatiner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5,),
                  child: Icon(
                    Icons.attach_money,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:0),
                        child: Text(
                          'PAYMENT',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 14),
                        child: Text(
                          'METHOD',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(padding:EdgeInsets.only(left: 105,top: 2),

                        child:Icon(
                          Icons.arrow_forward_ios,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ]
                ),

              ],
            ),
          ]
      ),
    );
  }
}
class secondContainer extends StatelessWidget {
  const secondContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
              children: [
                Container(
                  margin: EdgeInsets.only( top: 350),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color:
                    const Color.fromRGBO(255, 255, 255, 0.6196078431372549),
                  ),
                  child: Center(
                    child: Container(
                        margin: EdgeInsets.only(top: 15),
                        alignment: Alignment.center,
                        height: 70,
                        width: 150,
                        child: TextButton(
                          child: Row(children: [
                            Stack(children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3),
                                child: Icon(
                                  Icons.bookmark_add_outlined,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                              Stack(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 28, top: 3),
                                  child: Text(
                                    'SAVE PAYMENT',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'HIND'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 16, left: 28, bottom: 3),
                                  child: Text(
                                    'METHOD',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'HIND'),
                                  ),
                                ),
                              ]),
                            ]),
                          ]),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(
                                    236, 235, 235, 0.9803921568627451)),
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          onPressed: () {},
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color:
                    const Color.fromRGBO(236, 235, 235, 0.9803921568627451),
                  ),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Icon(
                            Icons.attach_money,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                'PAYMENT',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Hind',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 28),
                              child: Text(
                                'METHOD',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Hind',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),


                      Stack(children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 5, bottom: 5),
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
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            margin: const EdgeInsets.only(
                              top: 138,
                              left: 260,
                            ),
                            child: TextButton(
                              child: Icon(
                                Icons.slideshow_rounded,
                                size: 25,
                                color: Colors.black,
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Color.fromRGBO(255, 255, 255, 0.4)),
                                foregroundColor:
                                MaterialStateProperty.all<Color>(
                                    Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
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
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Container(
                            alignment: Alignment.center,
                            height: 90,
                            width: 110,
                            child: TextButton(
                              child: Row(children: [
                                Icon(
                                  Icons.add_card,
                                  size: 40,
                                  color: Colors.black,
                                ),
                                Stack(children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      'ADD',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'HIND'),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 12, left: 10),
                                    child: Text(
                                      'CARD',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'HIND'),
                                    ),
                                  ),
                                ]),
                              ]),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color.fromRGBO(209, 209, 209, 1)),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10))),
                              ),
                              onPressed: () {},
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
