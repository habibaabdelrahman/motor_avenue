import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:motor_avenue/Bookmarks.dart';
import 'package:motor_avenue/LiveAuction.dart';
import 'package:motor_avenue/Requests.dart';
import 'package:motor_avenue/Settings.dart';
import 'package:motor_avenue/cart.dart';
import 'package:motor_avenue/contactus.dart';
import 'package:motor_avenue/createads.dart';
import 'package:motor_avenue/order.dart';
import 'package:motor_avenue/store.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textController = TextEditingController();
  bool isPopupVisible = false;

  void _togglePopupVisibility() {
    setState(() {
      isPopupVisible = !isPopupVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color.fromRGBO(251, 205, 1, 1),
      Color.fromRGBO(251, 163, 1, 1.0),
      Colors.yellow,
      Color.fromRGBO(251, 97, 1, 1.0),
      Color.fromRGBO(63, 58, 41, 0.5803921568627451),
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 33.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'Hind',
    );
    return Scaffold(
      floatingActionButton: Visibility(
      visible: isPopupVisible,
      child: Padding(
        padding: EdgeInsets.only(top: 150),
        child: IconButton(
          onPressed: () {
            _togglePopupVisibility();
          },
          icon: Icon(
            Icons.close,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      bottomSheet: Visibility(
        visible: isPopupVisible,
        child: Column(children: [
          Container(
              width: 395,
              height: 710,
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
                        height: 220,
                        decoration: const BoxDecoration(
                          borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(25)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(0, 0, 0, 0),
                              Color.fromRGBO(255, 255, 255, 0.64),
                            ],
                          ),
                        ),
                        child:Padding(padding: EdgeInsets.only(left: 50,top:70),
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
                                width: 10,
                              ),
                              Padding(padding:EdgeInsets.only(top: 50),
                                  child:
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'HI,',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.waving_hand,
                                            color: Colors.white,
                                            size: 17,
                                          ),
                                        ],
                                      ),
                                      Text('KAREEM YOUNIS',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22))
                                    ],
                                  )
                              ),
                            ],
                          ),),
                      ),
                      Container(
                          height: 45,
                          width: 80,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 20,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.only(
                            top: 175,
                            left: 315,
                          ),
                          child: TextButton(
                            child: Icon(
                              Icons.edit_calendar_outlined,
                              size: 30,
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(255, 255, 255, 0.4)),
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
                  margin: EdgeInsets.only(right: 230),
                  width: 172,
                  height: 57,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20)),
                      color: Color.fromRGBO(217, 217, 217, 0.75)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
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
                        padding: const EdgeInsets.only(top: 5, left: 40),
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
                        margin: EdgeInsets.only(left: 3, top: 17),
                        child: Icon(
                          Icons.check_circle,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.only(top: 30, bottom: 4, left: 40),
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
                  width: 200,
                  height: 57,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20)),
                      color: Color.fromRGBO(217, 217, 217, 0.75)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
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
                        ' YOUR ADS',
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
                        padding: EdgeInsets.only(left: 5),
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
                        ' CONTACT US',
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
                  margin: EdgeInsets.only(right: 190),
                  width: 200,
                  height: 57,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20)),
                      color: Color.fromRGBO(217, 217, 217, 0.75)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
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
                        ' REQUESTS',
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
                  width: 180,
                  height: 57,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20)),
                      color: Color.fromRGBO(217, 217, 217, 0.75)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
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
                       child:Text( ' SETINGS',
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
                )

              ])),
        ]),
      ),
      body:
          SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 1),
                    Color.fromRGBO(208, 196, 153, 0.7058823529411765),
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
                        padding: EdgeInsets.only(top: 40, left: 15),
                        onPressed: () {
                          _togglePopupVisibility();
                        },
                        icon: Icon(
                          Icons.notes_sharp,
                          size: 40,
                          color: Colors.white,
                        ),
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
                const SizedBox(width: 30),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/logo white.png',
                            width: 33,
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            const Positioned(
                              top: 0,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'DISCOVER',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Hind'),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 30,
                              ),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "WHAT'S NEW ?",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Hind'),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 61),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 250.0,
                                  child: AnimatedTextKit(
                                    pause: Duration(milliseconds: 500),
                                    repeatForever: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText(
                                        'FASTER...',
                                        textStyle: colorizeTextStyle,
                                        colors: colorizeColors,
                                      ),
                                      ColorizeAnimatedText(
                                        'SMOOTHER',
                                        textStyle: colorizeTextStyle,
                                        colors: colorizeColors,
                                      ),
                                      ColorizeAnimatedText(
                                        'WITH A SEC',
                                        textStyle: colorizeTextStyle,
                                        colors: colorizeColors,
                                      ),
                                    ],
                                    isRepeatingAnimation: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                        padding: const EdgeInsets.only(
                      left: 15,
                      top: 95,
                    )),

                    //************************ The Shop Button *************************

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => store(),
                            ));
                      },
                      child: Container(
                        height: 30,
                        width: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.store_mall_directory_outlined,
                              size: 33,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(
                                  children: [
                                    const Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: const Text(
                                          'THE',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Hind'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 11),
                                      child: const Text(
                                        'SHOP',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Hind'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(41, 41, 41, 0.37)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),

                    //************************ Live Auction Button *************************

                    Expanded(
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LiveAuction()),
                            );
                          },
                          child: Container(
                            height: 30,
                            width: 91,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.av_timer,
                                  size: 31,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Stack(
                                      children: [
                                        const Padding(
                                          padding:
                                              const EdgeInsets.only(top: 0),
                                          child: const Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              'LIVE',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 11.50,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Hind'),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            'AUCTION',
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Hind'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromRGBO(41, 41, 41, 0.37)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //************************ Create ADS Button *************************

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => createads(),
                            ));
                      },
                      child: Container(
                        height: 30,
                        width: 91,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.attach_file_outlined,
                              size: 31,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Stack(
                                  children: [
                                    const Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: const Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'CREATE',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Hind'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: const Text(
                                        'ADS',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Hind'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(41, 41, 41, 0.37)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)),
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(
                      left: 15,
                      top: 20,
                    )),
                  ],
                ),

                //******************* Card 1 ******************************

                Container(
                  width: 340,
                  height: 165,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/card 1.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(21),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromRGBO(244, 244, 244, 0.08)
                            .withOpacity(0.1),
                        const Color.fromRGBO(0, 0, 0, 0.17).withOpacity(0.1),
                        const Color.fromRGBO(47, 47, 47, 0.17).withOpacity(0.3),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 73,
                        top: 48,
                        child: Image.asset(
                          'assets/images/card car 1.png',
                          width: 240,
                        ),
                      ),
                      Container(
                          height: 45,
                          width: 80,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 20,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.only(
                            top: 120,
                            left: 280,
                          ),
                          child: TextButton(
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 30,
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(255, 255, 255, 0.4)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(21),
                                    topLeft: Radius.circular(21)),
                              )),
                            ),
                            onPressed: () {},
                          )),
                      Stack(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10,left: 13),
                            child: Text(
                              'MERCEDES BENZ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Hind'),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 25,left: 13),
                            child: Text(
                                  'EQXX',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Hind'),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                //------------------Card 2-----------------------------
                Container(
                  width: 340,
                  height: 165,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/img_group172.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(21),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromRGBO(244, 244, 244, 0.08)
                            .withOpacity(0.1),
                        const Color.fromRGBO(0, 0, 0, 0.17).withOpacity(0.1),
                        const Color.fromRGBO(47, 47, 47, 0.17).withOpacity(0.3),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 78,
                        top: 58,
                        child: Image.asset(
                          'assets/images/img_rectangle13.png',
                          width: 230,
                        ),
                      ),
                      Container(
                          height: 45,
                          width: 80,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 20,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.only(
                            top: 120,
                            left: 280,
                          ),
                          child: TextButton(
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 30,
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(255, 255, 255, 0.4)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(21),
                                    topLeft: Radius.circular(21)),
                              )),
                            ),
                            onPressed: () {},
                          )),
                      Stack(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10,left: 15),
                            child: Text(
                              'FERRARI',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Hind'),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 25,left: 15),
                            child: Text(
                              '296 GTB',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Hind'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                //*********************************Saved And Menu And Cart*************************

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 20,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(
                          top: 40,
                          bottom: 13,
                          left: 25,
                        ),
                        child: TextButton(
                          child: Icon(
                            Icons.bookmark_outline_sharp,
                            size: 28,
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(255, 255, 255, 0.4)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21))),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookmarks(),
                                ));
                          },
                        )),

                    //************ Menu Bottom *******************************

                    Expanded(
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => store(),
                                ));
                          },
                          icon: Icon(
                            Icons.grid_view_rounded,
                            size: 30,
                            color: Colors.black87,
                          ),
                          padding: EdgeInsets.only(top: 30, bottom: 15),
                        ),
                      ),
                    ),

                    //************************ Cart Button ****************
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 20,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(
                            top: 40, right: 25, bottom: 13),
                        child: TextButton(
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 27,
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(255, 255, 255, 0.4)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21))),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => cart(),
                                ));
                          },
                        )),
                  ],
                ),
              ]),
            ),
          ),

    );
  }
}
