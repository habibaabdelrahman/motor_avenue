import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class store extends StatelessWidget {

  final _controllar=PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                  iconSize: 40,
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 40, left: 15)),
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
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                  iconSize: 40,
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 40, right: 15)),
            ],
          ),
          Stack(
            children: [
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
                                  padding:
                                  const EdgeInsets.only(top: 5, left: 32),
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
                                    icon: const Icon(Icons.filter_alt_sharp),
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.only(bottom: 10),
                  child:Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 74, left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(21),
                                bottomLeft: Radius.circular(21)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color.fromRGBO(0, 0, 0, 0.13).withOpacity(0.2),
                                const Color.fromRGBO(95, 81, 45, 0.42).withOpacity(0.2),
                              ],
                            ),
                          ),
                          child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(21),
                                        topRight: Radius.circular(21),
                                      ),
                                      color: Color.fromRGBO(217, 217, 217, 1)),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                  margin:
                                  const EdgeInsets.only(top: 66, left: 20, right: 20,),
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
                                    child:Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 15, top: 10),
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
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromRGBO(255, 255, 255, 1)),
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(7.5))),
                                                      ),
                                                    )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10, top: 10),
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
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromRGBO(255, 255, 255, 1)),
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(7.5))),
                                                      ),
                                                    )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10, top: 10),
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
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromRGBO(255, 255, 255, 1)),
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(7.5))),
                                                      ),
                                                    )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10, top: 10),
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
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromRGBO(255, 255, 255, 1)),
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(7.5))),
                                                      ),
                                                    )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10, top: 10),
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
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromRGBO(255, 255, 255, 1)),
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(7.5))),
                                                      ),
                                                    )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10, top: 10),
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
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromRGBO(255, 255, 255, 1)),
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(7.5))),
                                                      ),
                                                    )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10, top: 10),
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
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromRGBO(255, 255, 255, 1)),
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(7.5))),
                                                      ),
                                                    )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10, top: 10),
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
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromRGBO(255, 255, 255, 1)),
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(7.5))),
                                                      ),
                                                    )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10, top: 10),
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
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromRGBO(255, 255, 255, 1)),
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(7.5))),
                                                      ),
                                                    )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10, top: 10),
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
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromRGBO(255, 255, 255, 1)),
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(7.5))),
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ),
                                          Padding(padding: EdgeInsets.only(top: 7,bottom: 15),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 15,),
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
                                                          MaterialStateProperty.all<Color>(
                                                              Color.fromRGBO(255, 255, 255, 1)),
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(7.5))),
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10, ),
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
                                                          MaterialStateProperty.all<Color>(
                                                              Color.fromRGBO(255, 255, 255, 1)),
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(7.5))),
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10, ),
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
                                                          MaterialStateProperty.all<Color>(
                                                              Color.fromRGBO(255, 255, 255, 1)),
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(7.5))),
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10, ),
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
                                                          MaterialStateProperty.all<Color>(
                                                              Color.fromRGBO(255, 255, 255, 1)),
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(7.5))),
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10, ),
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
                                                          MaterialStateProperty.all<Color>(
                                                              Color.fromRGBO(255, 255, 255, 1)),
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(7.5))),
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10, ),
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
                                                          MaterialStateProperty.all<Color>(
                                                              Color.fromRGBO(255, 255, 255, 1)),
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(7.5))),
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10, ),
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
                                                          MaterialStateProperty.all<Color>(
                                                              Color.fromRGBO(255, 255, 255, 1)),
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(7.5))),
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10, ),
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
                                                          MaterialStateProperty.all<Color>(
                                                              Color.fromRGBO(255, 255, 255, 1)),
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(7.5))),
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10, ),
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
                                                          MaterialStateProperty.all<Color>(
                                                              Color.fromRGBO(255, 255, 255, 1)),
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(7.5))),
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10, ),
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
                                                          MaterialStateProperty.all<Color>(
                                                              Color.fromRGBO(255, 255, 255, 1)),
                                                          shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(7.5))),
                                                        ),
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),

                                ),
                              ]),
                        ),
                        Stack(
                            children:[
                              Container(

                                margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                                child: InkWell(
                                  onTap: () {
                                  },
                                  child: Image.asset(
                                    'assets/images/car 1.png',
                                    height: 187,
                                    width: 400,
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 40,top:10),
                                child:Image.asset(
                                  'assets/images/car 1.png',
                                  height: 80,
                                  width: 50,
                                ),
                              ),
                            ]
                        ),
                        Stack(
                            children:[
                              Container(

                                margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                                child: InkWell(
                                  onTap: () {
                                  },
                                  child: Image.asset(
                                    'assets/images/car 1.png',
                                    height: 187,
                                    width: 400,
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 40,top:10),
                                child:Image.asset(
                                  'assets/images/car 1.png',
                                  height: 80,
                                  width: 50,
                                ),
                              ),
                            ]
                        ),
                        Row(
                          children: [

                            Stack(
                                children:[
                                  Container(

                                    margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                                    child: InkWell(
                                      onTap: () {
                                      },
                                      child: Image.asset(
                                        'assets/images/car 1.png',
                                        height: 144,
                                        width: 186,
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 40,top:10),
                                    child:Image.asset(
                                      'assets/images/car 1.png',
                                      height: 80,
                                      width: 50,
                                    ),
                                  ),
                                ]
                            ),

                          ],

                        ),
                      ]
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}