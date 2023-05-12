import 'package:flutter/material.dart';
import 'package:motor_avenue/Home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class createads extends StatelessWidget {
  final _controllar = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {},
                  iconSize: 32,
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 50, left: 20)),
              Expanded(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 60),
                    child: Image.asset(
                      'assets/images/logo white.png',
                      width: 72,
                    ),
                  ),
                ),
              ),
              IconButton(
                  icon: const Icon(Icons.share_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  iconSize: 35,
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 50, right: 20)),
            ],
          ),
          SizedBox(
            height: 650,
            child: PageView(controller: _controllar, children: [
              Stack(children: [
                WidgetAnimator(
                  incomingEffect:
                      WidgetTransitionEffects.incomingSlideInFromBottom(
                    duration: Duration(seconds: 3),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(21),
                          topRight: Radius.circular(21),
                          bottomLeft: Radius.circular(21)),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromRGBO(30, 30, 30, 1),
                          const Color.fromRGBO(0, 0, 0, 0),
                        ],
                        end: FractionalOffset.centerRight,
                        begin: FractionalOffset.centerLeft,
                      ),
                    ),
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
                                        top: 5, left: 280),
                                    child: const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        ' CREATE',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Hind',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 240),
                                    child: Icon(
                                      Icons.av_timer,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 22, left: 280, bottom: 4),
                                    child: const Text(
                                      'ADS',
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Hind',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      icon: const Icon(Icons.arrow_back_ios),
                                      onPressed: () {},
                                      iconSize: 35,
                                      color: Colors.white,
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 6)),
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
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 74, left: 10, right: 10),
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
                      child:
                          ListView(padding: EdgeInsets.only(top: 5), children: [
                        Column(
                          children: <Widget>[
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 5, bottom: 5),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/images/car 1.png',
                                      height: 170,
                                      width: 400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 120, top: 90),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add_circle_outline,
                                        size: 27,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'ADD IMAGES',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 33,
                                    width: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(21)),
                                      color: Color.fromRGBO(255, 255, 255, 0.4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 20,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    margin: const EdgeInsets.only(
                                        top: 140, right: 20),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          top: 5, left: 15, right: 5),
                                      child: Row(
                                        children: [
                                          Text(
                                            'UPLOAD UP TO 30 PHOTOS',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Icon(Icons.photo_library_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 30,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(15)),
                                      color: Color.fromRGBO(255, 255, 255, 0.4),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 20,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    margin:
                                        const EdgeInsets.only(top: 7, left: 19),
                                    child: Container(
                                        padding: EdgeInsets.only(
                                            top: 4, left: 5, right: 5),
                                        child: Icon(Icons.camera_alt_outlined)),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Divider(
                                  height: 45,
                                  thickness: 2,
                                  indent: 22,
                                  endIndent: 20,
                                  color: Colors.white,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 30,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(10)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 20,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    margin: const EdgeInsets.only(
                                        top: 20, left: 15),
                                    child: Container(
                                        padding: EdgeInsets.only(
                                            top: 8, left: 7, right: 5),
                                        child: Text('AD TYPE',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                            ))),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Row(children: [
                                    ElevatedButton(
                                      child: const Text(
                                        'FOR SALE',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'MontserratSubrayada'),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        21.5))),
                                      ),
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    ElevatedButton(
                                      child: const Text(
                                        'WANTED ITEM',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'MontserratSubrayada'),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        21.5))),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ]),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: ElevatedButton(
                                            child: const Text(
                                              'ASSIGN TO AUCTION',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily:
                                                      'MontserratSubrayada'),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              21.5))),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Divider(
                                      height: 45,
                                      thickness: 2,
                                      indent: 22,
                                      endIndent: 20,
                                      color: Colors.white,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 30,
                                        width: 75,
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
                                            top: 20, left: 15),
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                top: 8, left: 10, right: 5),
                                            child: Text('BRAND',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
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
                                            const Color.fromRGBO(
                                                    95, 81, 45, 0.42)
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
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 7, bottom: 15),
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
                                        width: 75,
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
                                                top: 8, left: 12, right: 5),
                                            child: Text('MODLE',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 30, top: 10),
                                          child: Text(
                                            'Modle',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  height: 60,
                                  margin: const EdgeInsets.only(top: 0),
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
                                        width: 75,
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
                                                top: 8, left: 12, right: 5),
                                            child: Text('PRICE',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 30, top: 10),
                                          child: Text(
                                            'Price',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  height: 60,
                                  margin: const EdgeInsets.only(top: 0),
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
                                        width: 100,
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
                                            top: 21, left: 15, right: 15),
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                top: 7, left: 15, right: 5),
                                            child: Text('FUEL TYPE',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 10),
                                      child: Row(children: [
                                        ElevatedButton(
                                          child: const Text(
                                            'BENZEN',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            'ELECTRONIC',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 3),
                                      child: Row(children: [
                                        ElevatedButton(
                                          child: const Text(
                                            'HYBRID',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            'DIESEL',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 3),
                                          child: ElevatedButton(
                                            child: const Text(
                                              'NATURAL GAS',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily:
                                                      'MontserratSubrayada'),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              21.5))),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
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
                                        width: 75,
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
                                                top: 8, left: 15, right: 5),
                                            child: Text('YEAR',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 30, top: 10),
                                          child: Text(
                                            'Year',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  height: 60,
                                  margin: const EdgeInsets.only(top: 0),
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
                                        width: 180,
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
                                            top: 21, left: 15, right: 20),
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                top: 8, left: 15, right: 5),
                                            child: Text('TRANSMISSION TYPE',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 3),
                                      child: Row(children: [
                                        ElevatedButton(
                                          child: const Text(
                                            'AUTOMATIC',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            'MANUAL',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ]),
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
                                        width: 110,
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
                                            top: 21, left: 15, right: 30),
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                top: 8, left: 15, right: 5),
                                            child: Text('CONDITION',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 3),
                                      child: Row(children: [
                                        ElevatedButton(
                                          child: const Text(
                                            'NEW',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            'USED',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ]),
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
                                        width: 75,
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
                                                top: 8, left: 15, right: 5),
                                            child: Text('COLOR',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 30, top: 10),
                                          child: Text(
                                            'Color',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  height: 60,
                                  margin: const EdgeInsets.only(top: 0),
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
                                        width: 110,
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
                                            top: 21, left: 15, right: 15),
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                top: 7, left: 15, right: 5),
                                            child: Text('BODY TYPE',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 10),
                                      child: Row(children: [
                                        ElevatedButton(
                                          child: const Text(
                                            'SEDAN',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            '4x4',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            'SUV',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 3),
                                      child: Row(children: [
                                        ElevatedButton(
                                          child: const Text(
                                            'COUPE',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            'CABRIOLET',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 3),
                                      child: Row(children: [
                                        ElevatedButton(
                                          child: const Text(
                                            'VAN/BUS',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            'OTHER',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Divider(
                                      height: 45,
                                      thickness: 2,
                                      indent: 24,
                                      endIndent: 20,
                                      color: Colors.white,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 30,
                                        width: 150,
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
                                            top: 21, left: 15, right: 30),
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                top: 7, left: 15, right: 5),
                                            child: Text('ENGINE CAPACITY',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 3),
                                      child: Row(children: [
                                        ElevatedButton(
                                          child: const Text(
                                            '0-800',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            '1000-1300',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 3),
                                      child: Row(children: [
                                        ElevatedButton(
                                          child: const Text(
                                            '1400-1500',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            '1600',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 3),
                                      child: Row(children: [
                                        ElevatedButton(
                                          child: const Text(
                                            '1800-2000',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                            '2200-2800',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    'MontserratSubrayada'),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5))),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: 20, top: 3),
                                          child: ElevatedButton(
                                            child: const Text(
                                              'MORE THAN 3000',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily:
                                                      'MontserratSubrayada'),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              21.5))),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
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
                                        width: 110,
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
                                            child: Text('KILOMETERS',
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
                                  margin: const EdgeInsets.only(top: 5),
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
                                        width: 110,
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
                                            child: Text('LOCATION',
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
                                  margin: const EdgeInsets.only(top: 5),
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
                                        width: 170,
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
                                            child: Text('ADD DESCRIPTION',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 30, top: 10),
                                          child: Text(
                                            'AD TITLE',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  height: 60,
                                  margin: const EdgeInsets.only(top: 0),
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
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 30,
                                            top: 10,
                                          ),
                                          child: Text(
                                            'Describe what you are selling',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                
                                Container(
                                  width: 320,
                                  height: 60,
                                  margin: const EdgeInsets.only(top: 4,bottom:5),
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
                                
                              ],
                            ),
                          ],
                        ),
                      ]),
                    )),
              ]),
            ]),
          ),
          Container(
              height: 45,
              width: 160,
              margin: const EdgeInsets.only(top: 5, left: 20),
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
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                },
              )),
        ],
      ),
    ));
  }
}
