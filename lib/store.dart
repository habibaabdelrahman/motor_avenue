import 'package:flutter/material.dart';
import 'package:motor_avenue/Home.dart';
import 'package:motor_avenue/Requests.dart';
import 'package:motor_avenue/Settings.dart';
import 'package:motor_avenue/car_details.dart';
import 'package:motor_avenue/contactus.dart';
import 'package:motor_avenue/order.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class store extends StatefulWidget {
  @override
  State<store> createState() => _storeState();
}

class _storeState extends State<store> {
  final _controllar = PageController();
  bool isPopupVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children:[
      Container(
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
                padding: EdgeInsets.only(top: 35, left: 15),
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
                    margin: const EdgeInsets.only(top: 55),
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
                  padding: const EdgeInsets.only(top: 40, right: 15)),
            ],
          ),
          SizedBox(
            height: 640,
            child: PageView(
              controller: _controllar,
              children: [
                Stack(
                  children: [
                    WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromBottom(
                        duration: Duration(seconds: 3),
                      ),
                      child:
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 20),
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
                          margin: const EdgeInsets.only(
                            top: 74,
                            left: 10,
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(21),
                                bottomLeft: Radius.circular(21)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color.fromRGBO(0, 0, 0, 0.13)
                                    .withOpacity(0.2),
                                const Color.fromRGBO(95, 81, 45, 0.42)
                                    .withOpacity(0.2),
                              ],
                            ),
                          ),
                          child: ListView(children: [
                            Column(children: [
                              Stack(children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(21),
                                        topRight: Radius.circular(21),
                                      ),
                                      color: Color.fromRGBO(217, 217, 217, 1)),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Stack(
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
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 66,
                                    left: 20,
                                    right: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(21),
                                        bottomLeft: Radius.circular(21)),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        const Color.fromRGBO(0, 0, 0, 0.13)
                                            .withOpacity(0.2),
                                        const Color.fromRGBO(95, 81, 45, 0.42)
                                            .withOpacity(0.2),
                                      ],
                                    ),
                                  ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 10),
                                            child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              car_details(),
                                                        ));
                                                  },
                                                  child: Image.asset(
                                                    'assets/images/black logoo.png',
                                                    width: 21,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Color.fromRGBO(
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
                                                left: 10, top: 10),
                                            child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'assets/images/black logoo.png',
                                                    width: 21,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Color.fromRGBO(
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
                                                left: 10, top: 10),
                                            child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'assets/images/black logoo.png',
                                                    width: 21,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Color.fromRGBO(
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
                                                left: 10, top: 10),
                                            child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'assets/images/black logoo.png',
                                                    width: 21,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Color.fromRGBO(
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
                                                left: 10, top: 10),
                                            child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'assets/images/black logoo.png',
                                                    width: 21,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Color.fromRGBO(
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
                                                left: 10, top: 10),
                                            child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'assets/images/black logoo.png',
                                                    width: 21,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Color.fromRGBO(
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
                                                left: 10, top: 10),
                                            child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'assets/images/black logoo.png',
                                                    width: 21,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Color.fromRGBO(
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
                                                left: 10, top: 10),
                                            child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'assets/images/black logoo.png',
                                                    width: 21,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Color.fromRGBO(
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
                                                left: 10, top: 10),
                                            child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'assets/images/black logoo.png',
                                                    width: 21,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Color.fromRGBO(
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
                                                left: 10, top: 10),
                                            child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'assets/images/black logoo.png',
                                                    width: 21,
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Color.fromRGBO(
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
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 7, bottom: 15),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 15,
                                              ),
                                              child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: Image.asset(
                                                      'assets/images/black logoo.png',
                                                      width: 21,
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
                                                      'assets/images/black logoo.png',
                                                      width: 21,
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
                                                      'assets/images/black logoo.png',
                                                      width: 21,
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
                                                      'assets/images/black logoo.png',
                                                      width: 21,
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
                                                      'assets/images/black logoo.png',
                                                      width: 21,
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
                                                      'assets/images/black logoo.png',
                                                      width: 21,
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
                                                      'assets/images/black logoo.png',
                                                      width: 21,
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
                                                      'assets/images/black logoo.png',
                                                      width: 21,
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
                                                      'assets/images/black logoo.png',
                                                      width: 21,
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
                                                      'assets/images/black logoo.png',
                                                      width: 21,
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
                                  child: InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/images/car 1.png',
                                      height: 187,
                                      width: 400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 40, top: 10),
                                  child: Image.asset(
                                    'assets/images/car 1.png',
                                    height: 80,
                                    width: 50,
                                  ),
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
                                Padding(
                                  padding: EdgeInsets.only(left: 40, top: 10),
                                  child: Image.asset(
                                    'assets/images/car 1.png',
                                    height: 80,
                                    width: 50,
                                  ),
                                ),
                              ]),
                              Row(
                                children: [
                                  Stack(children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                          top: 5,
                                          bottom: 5),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          'assets/images/car 1.png',
                                          height: 144,
                                          width: 186,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 40, top: 10),
                                      child: Image.asset(
                                        'assets/images/car 1.png',
                                        height: 80,
                                        width: 50,
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ]),
                          ]),
                        ),
                      ]),
                    )
                  ],
                ),
              ],
            ),
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
                        SizedBox(
                          height: 15  ,
                        ),

                      ])),
            ]),
          ),
      ]
    ),
    );
  }
}
