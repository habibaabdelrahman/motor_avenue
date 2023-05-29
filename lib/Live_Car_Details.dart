import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Live_Car_Details extends StatefulWidget {
  const Live_Car_Details({Key? key}) : super(key: key);

  @override
  State<Live_Car_Details> createState() => _Live_Car_DetailsState();
}

class _Live_Car_DetailsState extends State<Live_Car_Details> {
  double containerWidth = 155.0;
  bool showText = false;
  IconData _buttonIcon = Icons.arrow_back_ios;

  void _toggleWidth() {
    setState(() {
      containerWidth = containerWidth == 155.0 ? 360.0 : 155.0;
      showText = !showText;
      _buttonIcon = containerWidth == 155.0
          ? Icons.arrow_back_ios
          : Icons.arrow_forward_ios;
    });
  }

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
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    iconSize: 30,
                    color: Colors.black,
                    padding: const EdgeInsets.only(top: 30, left: 20)),
                Expanded(
                  child: Center(
                    child: Container(
                        margin: const EdgeInsets.only(top: 70, left: 85),
                        child: Stack(
                          children: [
                            Text(
                              'AUCTION',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Hind'),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 25, left: 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.sensors_sharp,
                                      size: 48,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      ' LIVE',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Hind'),
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                ),
                IconButton(
                    icon: const Icon(
                      Icons.bookmark_outline_sharp,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    iconSize: 30,
                    color: Colors.black,
                    padding: const EdgeInsets.only(top: 30, right: 20)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                if (!showText)
                  Expanded(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Text(
                              'ROLLS ROYCE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Hind'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Text(
                                'DAWN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Hind'),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 10),
                          width: 160,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 255, 255, 0.08)
                                .withOpacity(0.2),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 23,
                                ),
                                Stack(
                                  children: [
                                    Text(
                                      'HIGHEST BID',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Hind'),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Icon(
                                            Icons.attach_money_outlined,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 20,
                                          ),
                                          child: Text(
                                            '432,000',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Hind'),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                IconButton(
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                    iconSize: 20,
                                    color: Colors.black,
                                    padding: const EdgeInsets.only(left: 10)),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Column(children: [
                            Stack(children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                width: 170,
                                child: Divider(
                                  height: 30,
                                  thickness: 2,
                                  indent: 1,
                                  endIndent: 100,
                                  color: Colors.white,
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      left: 13, right: 20, top: 7),
                                  child: Text(
                                    'INFO',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Hind'),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25),
                                width: 170,
                                child: Divider(
                                  height: 30,
                                  thickness: 2,
                                  indent: 100,
                                  endIndent: 1,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                            Center(
                              child: Container(
                                width: 195,
                                margin: const EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Text(
                                  "Dawn is an emblem of spontaneity."
                                  "A drophead coupé crafted to empower"
                                  "the free spirit.Dawn is for those who"
                                  "take off at a moment’s notice, going"
                                  "wherever the road leads.It is for the"
                                  "individual who will never be tied down."
                                  "With Dawn, let inspiration guide you.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Hind'),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(right: 15, top: 3),
                  child: Column(
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: _toggleWidth,
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            duration: Duration(milliseconds: 500),
                            width: containerWidth,
                            height: 250.0,
                            child: Center(
                              child: CarouselSlider(
                                options: CarouselOptions(
                                  height: 250,
                                  autoPlay: false,
                                  viewportFraction: 1.0,
                                ),
                                items: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        'assets/images/car 1.png',
                                        fit: BoxFit.cover),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        'assets/images/car1_1.png',
                                        fit: BoxFit.cover),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        'assets/images/car1_2.png',
                                        fit: BoxFit.cover),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        'assets/images/car1_3.png',
                                        fit: BoxFit.cover),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        'assets/images/car1_4.png',
                                        fit: BoxFit.cover),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        'assets/images/car1_5.png',
                                        fit: BoxFit.cover),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        'assets/images/car1_6.png',
                                        fit: BoxFit.cover),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                        'assets/images/car1_7.png',
                                        fit: BoxFit.cover),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                            height: 30,
                            width: 40,
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
                              top: 220,
                            ),
                            child: ElevatedButton(
                              child: Icon(
                                _buttonIcon,
                                size: 15,
                                color: Colors.black,
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromRGBO(
                                            255, 255, 255, 0.6588235294117647)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16),
                                      topRight: Radius.circular(16)),
                                )),
                              ),
                              onPressed: _toggleWidth,
                            )),
                      ]),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 40),
                width: 200,
                child: Divider(
                  height: 30,
                  thickness: 2,
                  indent: 1,
                  endIndent: 100,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(left: 13, right: 20, top: 7),
                  child: Text(
                    'DESCRIPTION',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Hind'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 145),
                width: 200,
                child: Divider(
                  height: 30,
                  thickness: 2,
                  indent: 100,
                  endIndent: 1,
                  color: Colors.white,
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25)),
                      Icon(
                        Icons.gas_meter,
                        color: Colors.white,
                        size: 17,
                      ),
                      Text(
                        'FUEL TYPE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                      Text(
                        ' BENZINE',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25, top: 20)),
                      Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.white,
                        size: 17,
                      ),
                      Text(
                        'YEAR',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                      Text(
                        '2022',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25, top: 20)),
                      Icon(
                        Icons.account_tree_outlined,
                        color: Colors.white,
                        size: 17,
                      ),
                      Text(
                        'TRANSMISSION TYPE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                      Text(
                        ' AUTOMATIC',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25, top: 20)),
                      Icon(
                        Icons.api_outlined,
                        color: Colors.white,
                        size: 17,
                      ),
                      Text(
                        'CONDITION',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                      Text(
                        ' NEW',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25, top: 20)),
                      Icon(
                        Icons.format_color_fill_outlined,
                        color: Colors.white,
                        size: 17,
                      ),
                      Text(
                        'COLOR',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                      Text(
                        ' BLACK',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25, top: 20)),
                      Icon(
                        Icons.directions_car_filled_outlined,
                        color: Colors.white,
                        size: 17,
                      ),
                      Text(
                        'BODY TYPE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                      Text(
                        ' ROADSTER',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25, top: 20)),
                      Icon(
                        Icons.beach_access,
                        color: Colors.white,
                        size: 17,
                      ),
                      Text(
                        'ENGINE CAPACITY',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                      Text(
                        ' 8.0L',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 81,
                    width: 170,
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
                    margin: const EdgeInsets.only(top: 10, right: 20),
                    child: TextButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'TIME LEFT',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Hind'),
                          ),
                          SlideCountdown(
                            duration: const Duration(hours: 72),
                            separatorStyle: TextStyle(
                              color: Color.fromRGBO(255, 199, 0, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.w800
                            ),
                            separatorPadding: EdgeInsets.only(left: 0.5,right: 0.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            textStyle: TextStyle(
                              color: Color.fromRGBO(255, 199, 0, 1),
                              fontSize: 23,
                              fontWeight: FontWeight.w900
                            ),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 255, 255, 0.08)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                      ),
                      onPressed: () {},
                    )),
                Container(
                    height: 81,
                    width: 167,
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
                      top: 10,
                    ),
                    child: TextButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Text(
                                'PLACE',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Hind'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Row(
                                  children: [
                                    Text(
                                      'CUSTOM',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Hind'),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 37),
                                  child: Stack(
                                    children: [
                                      Text(
                                        ' BIDS',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Hind',
                                        ),
                                      ),
                                      Padding(
                                          padding:
                                              EdgeInsets.only(left: 55, top: 9),
                                          child: Icon(
                                            Icons.monetization_on,
                                            size: 14,
                                            color: Colors.amber,
                                          )),
                                    ],
                                  )),
                            ],
                          )
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 255, 255, 0.4)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                      ),
                      onPressed: () {},
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 75,
                    width: 170,
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
                      top: 10,
                    ),
                    child: TextButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'BID',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Hind'),
                                  ),
                                  Stack(children: [
                                    Icon(
                                      Icons.attach_money_outlined,
                                      size: 33,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 23, top: 1),
                                      child: Text(
                                        '1K',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 27,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                    ),
                                  ]),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 33,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 203, 20, 1)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                      ),
                      onPressed: () {},
                    )),
                SizedBox(
                  width: 15,
                ),
                Container(
                    height: 75,
                    width: 170,
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
                      top: 10,
                    ),
                    child: TextButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'BID',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Hind'),
                                  ),
                                  Stack(children: [
                                    Icon(
                                      Icons.attach_money_outlined,
                                      size: 33,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 23, top: 1),
                                      child: Text(
                                        '10K',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 27,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                    ),
                                  ]),
                                  Icon(
                                    Icons.add,
                                    size: 33,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 203, 20, 1)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                      ),
                      onPressed: () {},
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
