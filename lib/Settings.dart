import 'package:flutter/material.dart';
import 'package:motor_avenue/Home.dart';
import 'package:motor_avenue/setting2.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String selectedLanguage = 'ENGLISH';

  List<String> languages = ['ENGLISH', 'ARABIC'];

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
                    padding: EdgeInsets.only(left: 20, top: 25),
                    child: Text(
                      'USER PREFERENCES',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 188, top: 18),
                    child: Icon(
                      Icons.auto_awesome_sharp,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              width: 360,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 23, top: 20),
                    child: Positioned(
                        child: Text(
                      'CUSTOMIZE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 36),
                    child: Container(
                        child: const Text(
                      'THE LOOK',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 107, top: 36),
                    child: Container(
                        child: const Icon(
                          Icons.remove_red_eye_outlined,
                          size: 20,
                          color: Colors.white,
                        )),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 52),
                    child: Container(
                        child: const Text(
                      'AND',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 68),
                    child: Container(
                        child: const Text(
                      'FEEL',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 62, top: 68),
                    child: Container(
                        child: const Icon(
                      Icons.person_sharp,
                      size: 20,
                      color: Colors.white,
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 9),
                    child: VerticalDivider(
                      width: 20,
                      indent: 23,
                      endIndent: 23,
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      height: 90,
                      width: 180,
                      margin: const EdgeInsets.only(
                        top: 10,
                        left: 170,
                      ),
                      child: TextButton(
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only( top: 0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                  child: ShaderMask(
                                    blendMode: BlendMode.srcATop,
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: [Color.fromRGBO(0, 0, 0, 1),
                                          Color.fromRGBO(187, 182, 166, 1)],
                                      ).createShader(bounds);
                                    },
                                    child: Text(
                                      'LIVE',
                                      style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Hind',
                                      ),
                                    ),
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( top: 21),
                              child: Container(
                                  child: ShaderMask(
                                    blendMode: BlendMode.srcATop,
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: [Color.fromRGBO(0, 0, 0, 1),
                                          Color.fromRGBO(187, 182, 166, 1)],
                                      ).createShader(bounds);
                                    },
                                    child: Text(
                                      'LIGHT',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Hind',
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( top: 42),
                              child: Container(
                                  child: ShaderMask(
                                    blendMode: BlendMode.srcATop,
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: [Color.fromRGBO(255, 199, 0, 1),
                                          Color.fromRGBO(255, 61, 0, 0.84)],
                                      ).createShader(bounds);
                                    },
                                    child: Text(
                                      'MOOD',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Hind',
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( top: 16,left: 105),
                              child: Container(
                                  child:ShaderMask(
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: [Color.fromRGBO(255, 61, 0, 0.84),
                                          Color.fromRGBO(255, 199, 0, 1),
                                          ],
                                      ).createShader(bounds);
                                    },
                                    child: Icon(
                                      Icons.wb_sunny_outlined,
                                      color: Colors.white,
                                      size: 47,
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(217, 217, 217, 1)),
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      )),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 13),
                    child: Text(
                      'MANAGE ACCOUNT',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 183, top: 14),
                    child: Icon(
                      Icons.manage_accounts_outlined,
                      size: 21,
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
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28, top: 21),
                    child: Positioned(
                        child: Text(
                      'TAKE',
                      style: TextStyle(
                        fontSize: 18,
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
                      'ACTION',
                      style: TextStyle(
                        fontSize: 18,
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
                      'ON',
                      style: TextStyle(
                        fontSize: 18,
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
                      'ACCOUNT',
                      style: TextStyle(
                        fontSize: 18,
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
                      Icons.person_pin,
                      size: 20,
                      color: Colors.white,
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: VerticalDivider(
                      width: 20,
                      indent: 25,
                      endIndent: 25,
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      height: 42,
                      width: 180,
                      margin: const EdgeInsets.only(
                        top: 8,
                        left: 170,
                      ),
                      child: TextButton(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'LOGOUT',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Hind',
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.logout_sharp,
                                size: 17,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(217, 217, 217, 1)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      )),
                  Container(
                      height: 42,
                      width: 180,
                      margin: const EdgeInsets.only(
                        top: 59,
                        left: 170,
                      ),
                      child: TextButton(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'DELETE ACCOUNT',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Hind',
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.person_remove_alt_1_outlined,
                                size: 18,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(217, 217, 217, 1)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      )),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 13),
                    child: Text(
                      'PRIVACY',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 95, top: 14),
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
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28, top: 16),
                    child: Positioned(
                        child: Text(
                      'TAKE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 32),
                    child: Container(
                        child: const Text(
                      'CONTROL',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 48),
                    child: Container(
                        child: const Text(
                      'OF',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 64),
                    child: Container(
                        child: const Text(
                      'SECURITY',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 110, top: 66),
                    child: Container(
                        child: const Icon(
                      Icons.lock_outline_sharp,
                      size: 17,
                      color: Colors.white,
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: VerticalDivider(
                      width: 20,
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      height: 80,
                      width: 180,
                      margin: const EdgeInsets.only(
                        top: 10,
                        left: 170,
                      ),
                      child: TextButton(
                        child: const Center(
                          child: Text(
                            'CHANGE PASSWORD',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Hind',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(217, 217, 217, 1)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => setting2(),
                              ));
                        },
                      )),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 13),
                    child: Text(
                      'LANGUAGE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 113, top: 14.5),
                    child: Icon(
                      Icons.language_outlined,
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
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28, top: 13),
                    child: Positioned(
                        child: Text(
                      'CHANGE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 30),
                    child: Container(
                        child: const Text(
                      'YOUR',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 46),
                    child: Container(
                        child: const Text(
                      'LANGUAGE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: VerticalDivider(
                      width: 20,
                      indent: 17,
                      endIndent: 17,
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      height: 45,
                      width: 145,
                      margin: const EdgeInsets.only(
                        top: 17,
                        left:205,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color:  Color.fromRGBO(217, 217, 217, 1),
                      ),

                      child: Padding(padding: EdgeInsets.only(left: 13.5,right: 13.5,),
                          child:DropdownButton<String>(
                        alignment: Alignment.center,
                            icon: Padding(padding:EdgeInsets.only(left: 6) ,
                            child: Icon(Icons.arrow_forward_ios,color: Colors.black,),),
                            iconSize: 17,
                            underline: Container(
                              height: 1.5,
                              color: Colors.black,  // Set your desired color here
                            ),
                        dropdownColor: Color.fromRGBO(217, 217, 217, 1),
                        style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 23,
                        ),
                        value: selectedLanguage,
                        onChanged: (newValue) async {
                          setState(() {
                            selectedLanguage = newValue!;
                          });
                          // You can add code here to handle language change
                        },
                        items: languages.map((String language) {
                          return DropdownMenuItem<String>(
                            value: language,
                            child: Text(language),
                          );
                        }).toList(),
                      ))),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 13),
                    child: Text(
                      'SUPPORT',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100, top: 14),
                    child: Icon(
                      Icons.headset_mic_outlined,
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
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28, top: 15),
                    child: Positioned(
                        child: Text(
                      '24/7',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 31),
                    child: Container(
                        child: const Text(
                      'HRS',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 47),
                    child: Container(
                        child: const Text(
                      'CUSTOMER',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 63),
                    child: Container(
                        child: const Text(
                      'SERVICE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 66),
                    child: Container(
                        child: const Icon(
                      Icons.lock_outline_sharp,
                      size: 17,
                      color: Colors.white,
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: VerticalDivider(
                      width: 20,
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      height: 80,
                      width: 180,
                      margin: const EdgeInsets.only(
                        top: 10,
                        left: 170,
                      ),
                      child: TextButton(
                        child: Stack(
                          children: [
                            Center(
                              child:
                              Text(
                                'CONACT US',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Hind',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 125, top: 9),
                              child: Icon(
                                Icons.headset_mic,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ) ,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(217, 217, 217, 1)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
