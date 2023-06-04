import 'package:flutter/material.dart';
import 'package:motor_avenue/Home.dart';
import 'package:motor_avenue/createads.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class LiveAuction extends StatelessWidget {
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
                  onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ));},
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
            height: 680,
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
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 49),
                                    child: const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        ' LIVE',
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
                                    margin: EdgeInsets.only(left: 3),
                                    child: Icon(
                                      Icons.av_timer,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 22, left: 49, bottom: 4),
                                    child: const Text(
                                      'AUCTIONS',
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Hind',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      icon: const Icon(Icons.arrow_forward_ios),
                                      onPressed: () { Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => createads(),
                                          ));},
                                      iconSize: 35,
                                      color: Colors.white,
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
                          ListView(padding: EdgeInsets.only(top: 5),
                              children: [
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                              ),
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: InkWell(
                                onTap: () {},
                                child: Stack(children: [
                                  Image.asset(
                                    'assets/images/car 1.png',
                                    height: 187,
                                    width: 400,
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: 33,
                                          constraints: BoxConstraints(
                                            maxWidth: 215,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                Radius.circular(20),
                                                topLeft: Radius.circular(21)),
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 20,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          margin: const EdgeInsets.only(
                                            top: 149,
                                          ),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 9)),
                                                Icon(
                                                  Icons.report_gmailerrorred_outlined,
                                                  size: 22,
                                                ),
                                                SizedBox(width: 3,),
                                                Text(
                                                  '7 Days',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontFamily: 'Hind'),
                                                ),
                                                VerticalDivider(
                                                  width: 20,
                                                  indent: 7,
                                                  endIndent: 7,
                                                  thickness: 2,
                                                  color: Colors.black,
                                                ),
                                                Text(
                                                  'BID',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontFamily: 'Hind'),
                                                ),
                                                Stack(
                                                  children: [
                                                    Icon(
                                                      Icons.attach_money_sharp,
                                                      size: 22,
                                                    ),
                                                    Padding(padding: EdgeInsets.only(left: 16,top: 2),
                                                      child:
                                                      Text(
                                                        '967,000',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontFamily: 'Hind'),
                                                      ),),
                                                  ],
                                                )

                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                              ),
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: InkWell(
                                onTap: () {},
                                child: Stack(children: [
                                  Image.asset(
                                    'assets/images/car 1.png',
                                    height: 187,
                                    width: 400,
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: 33,
                                          constraints: BoxConstraints(
                                            maxWidth: 215,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                Radius.circular(20),
                                                topLeft: Radius.circular(21)),
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 20,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          margin: const EdgeInsets.only(
                                            top: 149,
                                          ),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 9)),
                                                Icon(
                                                  Icons.report_gmailerrorred_outlined,
                                                  size: 22,
                                                ),
                                                SizedBox(width: 3,),
                                                Text(
                                                  '7 Days',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontFamily: 'Hind'),
                                                ),
                                                VerticalDivider(
                                                  width: 20,
                                                  indent: 7,
                                                  endIndent: 7,
                                                  thickness: 2,
                                                  color: Colors.black,
                                                ),
                                                Text(
                                                  'BID',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontFamily: 'Hind'),
                                                ),
                                                Stack(
                                                  children: [
                                                    Icon(
                                                      Icons.attach_money_sharp,
                                                      size: 22,
                                                    ),
                                                    Padding(padding: EdgeInsets.only(left: 16,top: 2),
                                                      child:
                                                      Text(
                                                        '967,000',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontFamily: 'Hind'),
                                                      ),),
                                                  ],
                                                )

                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                              ),
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: InkWell(
                                onTap: () {},
                                child: Stack(children: [
                                  Image.asset(
                                    'assets/images/car 1.png',
                                    height: 187,
                                    width: 400,
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: 33,
                                          constraints: BoxConstraints(
                                            maxWidth: 215,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(21)),
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 20,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          margin: const EdgeInsets.only(
                                            top: 149,
                                          ),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 9)),
                                                Icon(
                                                  Icons.report_gmailerrorred_outlined,
                                                  size: 22,
                                                ),
                                                SizedBox(width: 3,),
                                                Text(
                                                  '7 Days',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Hind'),
                                                ),
                                                VerticalDivider(
                                                  width: 20,
                                                  indent: 7,
                                                  endIndent: 7,
                                                  thickness: 2,
                                                  color: Colors.black,
                                                ),
                                                Text(
                                                  'BID',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Hind'),
                                                ),
                                                Stack(
                                                  children: [
                                                    Icon(
                                                      Icons.attach_money_sharp,
                                                      size: 22,
                                                    ),
                                                    Padding(padding: EdgeInsets.only(left: 16,top: 2),
                                                    child:
                                                    Text(
                                                      '967,000',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontFamily: 'Hind'),
                                                    ),),
                                                  ],
                                                )

                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21),
                              ),
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: InkWell(
                                onTap: () {},
                                child: Stack(children: [
                                  Image.asset(
                                    'assets/images/car 1.png',
                                    height: 187,
                                    width: 400,
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: 33,
                                          constraints: BoxConstraints(
                                            maxWidth: 215,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                Radius.circular(20),
                                                topLeft: Radius.circular(21)),
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 20,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          margin: const EdgeInsets.only(
                                            top: 149,
                                          ),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 9)),
                                                Icon(
                                                  Icons.report_gmailerrorred_outlined,
                                                  size: 22,
                                                ),
                                                SizedBox(width: 3,),
                                                Text(
                                                  '7 Days',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontFamily: 'Hind'),
                                                ),
                                                VerticalDivider(
                                                  width: 20,
                                                  indent: 7,
                                                  endIndent: 7,
                                                  thickness: 2,
                                                  color: Colors.black,
                                                ),
                                                Text(
                                                  'BID',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontFamily: 'Hind'),
                                                ),
                                                Stack(
                                                  children: [
                                                    Icon(
                                                      Icons.attach_money_sharp,
                                                      size: 22,
                                                    ),
                                                    Padding(padding: EdgeInsets.only(left: 16,top: 2),
                                                      child:
                                                      Text(
                                                        '967,000',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontFamily: 'Hind'),
                                                      ),),
                                                  ],
                                                )

                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
                                ]),
                              ),
                            ),

                          ],
                        ),
                      ]),
                    )),
              ]),
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21),
                        bottomRight: Radius.circular(21)),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromRGBO(30, 30, 30, 1),
                        const Color.fromRGBO(0, 0, 0, 0),
                      ],
                      begin: FractionalOffset.centerRight,
                      end: FractionalOffset.centerLeft,
                    ),
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Stack(
                              children: [
                                const Padding(
                                  padding:
                                      const EdgeInsets.only(top: 7, left: 235),
                                  child: const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      ' PASSED',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Hind',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 185),
                                  child: Icon(
                                    Icons.av_timer,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 22, left: 235, bottom: 4),
                                  child: const Text(
                                    'AUCTIONS',
                                    style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Hind',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                IconButton(
                                    icon: const Icon(
                                        Icons.arrow_back_ios_new_outlined),
                                    onPressed: () { Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LiveAuction(),
                                        ));},
                                    iconSize: 35,
                                    color: Colors.white,
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 6)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
                  child: ListView(padding: EdgeInsets.only(top: 5), children: [
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
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
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
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
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
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
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
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
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
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
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'assets/images/car 1.png',
                              height: 187,
                              width: 400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                )
              ]),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          SmoothPageIndicator(
            controller: _controllar,
            count: 2,
            effect: ExpandingDotsEffect(
                activeDotColor: Colors.white,
                dotColor: Colors.white.withOpacity(0.5),
                dotHeight: 7,
                dotWidth: 9),
          )
        ],
      ),
    ));
  }
}
