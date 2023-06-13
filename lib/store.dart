import 'package:flutter/material.dart';
import 'package:motor_avenue/Home.dart';
import 'package:motor_avenue/Requests.dart';
import 'package:motor_avenue/Settings.dart';
import 'package:motor_avenue/contactus.dart';
import 'package:motor_avenue/order.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class store extends StatefulWidget {
  @override
  State<store> createState() => _storeState();
}
class _storeState extends State<store> {
  bool isPopupVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
      Container(
        height: 800,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(196, 187, 159, 1.0),
              Color.fromRGBO(0, 0, 0, 0.96),
            ],
          ),
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(isPopupVisible ? Icons.clear : Icons.notes_sharp),
                padding: EdgeInsets.only(top: 30, left: 15),
                onPressed: () {
                  setState(() {
                    isPopupVisible = !isPopupVisible;
                  });
                },
                iconSize: 40,
                color: Colors.black,
              ),
              Expanded(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 35),
                    child: Image.asset(
                      'assets/images/black logoo.png',
                      width: 66,
                    ),
                  ),
                ),
              ),
              IconButton(
                  icon: const Icon(Icons.share_outlined),
                  onPressed: () {},
                  iconSize: 40,
                  color: Colors.black,
                  padding: const EdgeInsets.only(top: 35, right: 15)),
            ],
          ),
          Stack(
            children: [
              WidgetAnimator(
                incomingEffect:
                    WidgetTransitionEffects.incomingSlideInFromBottom(
                  duration: Duration(seconds: 3),
                ),
                child:
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21),
                      ),
                      color: Color.fromRGBO(217, 217, 217, 1)),
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: [
                                const Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 32),
                                  child: const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      ' AVENUE',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Hind',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 15,
                                    top: 8,
                                  ),
                                  child: Image.asset(
                                    'assets/images/black logoo.png',
                                    width: 21,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 23, left: 14, bottom: 4),
                                  child: const Text(
                                    'STORE',
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Hind',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                IconButton(
                                    icon: const Icon(
                                        Icons.filter_alt_sharp),
                                    onPressed: () {},
                                    iconSize: 35,
                                    color: Colors.black,
                                    padding: const EdgeInsets.only(
                                        left: 325, top: 6)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              WidgetAnimator(
                incomingEffect:
                    WidgetTransitionEffects.incomingSlideInFromBottom(
                  duration: Duration(seconds: 3),
                ),
                child: Column(children: [
                  Container(
                    height:580,
                    margin: const EdgeInsets.only(
                      top: 74,
                      left: 15,
                      right: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(21),
                          bottomLeft: Radius.circular(21)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color.fromRGBO(0, 0, 0, 0.51)
                              .withOpacity(0.2),
                          const Color.fromRGBO(255, 255, 255, 0.3)
                              .withOpacity(0.2),
                          const Color.fromRGBO(255, 255, 255, 0.51)
                              .withOpacity(0.2),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(children: [
                          Stack(children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 15, right: 15, top: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(21),
                                    topRight: Radius.circular(21),
                                  ),
                                  color: Color.fromRGBO(217, 217, 217, 1)),
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: const Text(
                                        'SELECT BY BRAND',
                                        style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Hind',
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width:400,
                              margin: const EdgeInsets.only(
                                top: 66,
                                left: 15,
                                right: 15,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(21),
                                    bottomLeft: Radius.circular(21)),
                                color:Color.fromRGBO(37, 37, 37, 0.47)
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Column(children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 10),
                                        child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Image.asset(
                                                'assets/images/tesla.png',
                                                width: 45,
                                                height: 50,
                                              ),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .all<Color>(
                                                        Color
                                                            .fromRGBO(
                                                            234,
                                                            234,
                                                            234,
                                                            1.0)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    7.5))),
                                              ),
                                            )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 10),
                                        child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Image.asset(
                                                'assets/images/lanser.png',
                                                width: 55,
                                              ),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .all<Color>(
                                                        Color
                                                            .fromRGBO(
                                                            234,
                                                            234,
                                                            234,
                                                            1.0)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    7.5))),
                                              ),
                                            )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 10),
                                        child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Image.asset(
                                                'assets/images/EB logo black.png',
                                                width:30,
                                              ),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .all<Color>(
                                                        Color
                                                            .fromRGBO(
                                                            234,
                                                            234,
                                                            234,
                                                            1.0)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    7.5))),
                                              ),
                                            )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 10),
                                        child: Container(
                                            width: 50,
                                            height: 50,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Image.asset(
                                                'assets/images/tyota.png',
                                                width: 30,
                                                fit:BoxFit.cover,
                                              ),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .all<Color>(
                                                        Color
                                                            .fromRGBO(
                                                            234,
                                                            234,
                                                            234,
                                                            1.0)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    7.5))),
                                              ),
                                            )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 10),
                                        child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Image.asset(
                                                'assets/images/MAR.png',
                                                width: 35,
                                              ),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .all<Color>(
                                                        Color
                                                            .fromRGBO(
                                                            234,
                                                            234,
                                                            234,
                                                            1.0)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    7.5))),
                                              ),
                                            )),
                                      ),
                                      
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 10),
                                        child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Image.asset(
                                                'assets/images/fire_black.png',
                                                width: 50,
                                                height: 50,
                                              ),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                MaterialStateProperty
                                                    .all<Color>(
                                                    Color
                                                        .fromRGBO(
                                                        234,
                                                        234,
                                                        234,
                                                        1.0)),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            7.5))),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 7, bottom: 15),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Image.asset(
                                                  'assets/images/logo R.png',
                                                  width: 35,
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty
                                                          .all<Color>(Color
                                                          .fromRGBO(
                                                          234,
                                                          234,
                                                          234,
                                                          1.0)),
                                                  shape: MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      7.5))),
                                                ),
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Image.asset(
                                                  'assets/images/BO.png',
                                                  width: 50,
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty
                                                          .all<Color>(Color
                                                              .fromRGBO(
                                                                  234,
                                                          234,
                                                          234,
                                                          1.0)),
                                                  shape: MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      7.5))),
                                                ),
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Image.asset(
                                                  'assets/images/por.png',
                                                  width: 30,
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty
                                                      .all<Color>(Color
                                                      .fromRGBO(
                                                      255,
                                                      255,
                                                      255,
                                                      1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              7.5))),
                                                ),
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Image.asset(
                                                  'assets/images/VOLVO.png',
                                                  width: 30,
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty
                                                      .all<Color>(Color
                                                      .fromRGBO(
                                                      255,
                                                      255,
                                                      255,
                                                      1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              7.5))),
                                                ),
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Image.asset(
                                                  'assets/images/trophy_black.png',
                                                  width: 30,
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty
                                                      .all<Color>(Color
                                                      .fromRGBO(
                                                      255,
                                                      255,
                                                      255,
                                                      1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              7.5))),
                                                ),
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Image.asset(
                                                  'assets/images/B.png',
                                                  width: 30,
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty
                                                      .all<Color>(Color
                                                      .fromRGBO(
                                                      255,
                                                      255,
                                                      255,
                                                      1)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              7.5))),
                                                ),
                                              )),
                                        ),

                                      ],
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ]),
                          Stack(children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, top: 5, bottom: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(21)),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/car 1.png',
                                    height: 180,
                                    width: 400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40, ),
                              child: Image.asset(
                                'assets/images/bentley.png',
                                height: 80,
                                width: 65,
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
                                  left: 298,
                                ),
                                child: TextButton(
                                  child: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    size: 27,
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
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, top: 5, bottom: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(21)),
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/RR.png',
                                    height: 180,
                                    width: 400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 5),
                              child: Image.asset(
                                'assets/images/logo R white.png',
                                height: 80,
                                width: 50,
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
                                  left: 298,
                                ),
                                child: TextButton(
                                  child: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    size: 27,
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
                            children: [
                              Stack(children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20,
                                      right: 10,
                                      top: 5,
                                      bottom: 5),
                                  child:ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(21)),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Image.asset(
                                        'assets/images/m1.png',
                                        height: 230,
                                        width: 165,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 35, top:30),
                                  child: Image.asset(
                                    'assets/images/mercedes_logo.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ]),
                              Stack(children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      // left: 20,
                                      right: 20,
                                      top: 5,
                                      bottom: 5),
                                  child:ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(21)),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Image.asset(
                                        'assets/images/EB1.png',
                                         height:230,
                                         width: 165,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 20, top: 30),
                                  child: Image.asset(
                                    'assets/images/EB LOGO WHITE.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ]),
                            ],
                          ),
                          SizedBox(height: 10,)
                        ]),
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
          Center(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
              },
              icon: Icon(
                Icons.grid_view_rounded,
                size: 35,
                color: Colors.white,
              ),
              padding: EdgeInsets.only(top: 15, bottom: 15),
            ),
          ),
        ]),
      ),

          Visibility(
            visible: isPopupVisible,
            child: Column(children: [
              Container(
                  width: 395,
                  height: 725,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50)),
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                  ),
                  child:
                  Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 230,
                              decoration: const BoxDecoration(
                                borderRadius:
                                BorderRadius.only(bottomRight: Radius.circular(25)),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(0, 0, 0, 0),
                                    Color.fromRGBO(
                                        86, 86, 86, 0.7098039215686275),
                                  ],
                                ),
                              ),
                              child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            icon: Icon(isPopupVisible ? Icons.clear : Icons.notes_sharp),
                                            padding: EdgeInsets.only(top: 35, left: 15),
                                            onPressed: () {
                                              setState(() {
                                                isPopupVisible = !isPopupVisible;
                                              });
                                            },
                                            iconSize: 40,
                                            color: Colors.white,
                                          ),

                                          Expanded(
                                            child: Center(
                                              child: Container(
                                                margin: const EdgeInsets.only(top: 55),
                                                child: Image.asset(
                                                  'assets/images/logo white.png',
                                                  width: 66,
                                                ),
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                              icon: const Icon(Icons.share_outlined),
                                              onPressed: () {},
                                              iconSize: 32,
                                              color: Colors.white,
                                              padding: const EdgeInsets.only(top: 43, right: 15)),
                                        ]),

                                    Padding(padding: EdgeInsets.only(left: 40,top:10),
                                      child:Row(
                                        children: [
                                          CircleAvatar(
                                              radius: 40,
                                              backgroundColor: Colors.black,
                                              child: const CircleAvatar(
                                                backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                                                foregroundColor: Colors.black,
                                                child: Icon(
                                                  Icons.person_outline,
                                                  size: 35,
                                                ),
                                                radius: 48,
                                              )),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Padding(padding:EdgeInsets.only(top: 0),
                                              child:
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'HI,',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.amber,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      Icon(
                                                        Icons.waving_hand,
                                                        color: Colors.white,
                                                        size: 20,
                                                      ),
                                                    ],
                                                  ),
                                                  Text('KAREEM YOUNIS',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 24))
                                                ],
                                              )
                                          ),
                                        ],
                                      ),),
                                  ]
                              ),
                            ),
                            Container(
                                height: 45,
                                width: 80,

                                margin: const EdgeInsets.only(
                                  top: 185,
                                  left: 315,
                                ),
                                child: TextButton(
                                  child: Icon(
                                    Icons.drive_file_rename_outline,
                                    size: 30,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                        Color.fromRGBO(255, 255, 255, 0.09)),
                                    foregroundColor: MaterialStateProperty.all<Color>(
                                        Colors.white),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(25),
                                              topLeft: Radius.circular(25)),
                                        )),
                                  ),
                                  onPressed: () {

                                  },
                                )),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 220),
                          width: 180,
                          height: 57,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(20)),
                              color: Color.fromRGBO(217, 217, 217, 0.75)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.event_note_outlined,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                              TextButton(onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => order(),
                                    ));
                              }, child:
                              Text(
                                'ORDERS',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 170),
                          width: 230,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(20)),
                              color: Color.fromRGBO(217, 217, 217, 0.75)),
                          child: Stack(
                            children: [
                              const Padding(
                                padding: const EdgeInsets.only(top: 5, left: 43),
                                child: const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'AUCTIONS',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Hind',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5, top: 17),
                                child: Icon(
                                  Icons.check_circle,
                                  size: 35,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                margin:
                                const EdgeInsets.only(top: 30, bottom: 4, left: 45),
                                child: const Text(
                                  'RESULTS',
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Hind',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 190),
                          width: 210,
                          height: 57,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(20)),
                              color: Color.fromRGBO(217, 217, 217, 0.75)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.photo_size_select_actual_outlined,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                              TextButton(onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home(),
                                    ));
                              }, child:
                              Text(
                                'YOUR ADS',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 150),
                          width: 250,
                          height: 57,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(20)),
                              color: Color.fromRGBO(217, 217, 217, 0.75)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.headset_mic,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                              TextButton(onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => contactus(),
                                    ));
                              }, child:
                              Text(
                                'CONTACT US',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 185),
                          width: 215,
                          height: 57,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(20)),
                              color: Color.fromRGBO(217, 217, 217, 0.75)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.photo_size_select_actual_outlined,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                              TextButton(onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Requests(),
                                    ));
                              }, child:
                              Text(
                                'REQUESTS',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          width: 200,
                          height: 57,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(20)),
                              color: Color.fromRGBO(217, 217, 217, 0.75)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.settings_outlined,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Settings(),
                                      ));
                                },
                                child:Text( 'SETINGS',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'Hind',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'LOG OUT',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              style:  ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Color.fromRGBO(217, 217, 217, 1)),
                                foregroundColor:
                                MaterialStateProperty.all<Color>(
                                    Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            21.5))),
                              ),)
                        ),
                        SizedBox(height: 15  ,),
                      ])),
            ]),
          ),
      ]
    ),
    );
  }
}
