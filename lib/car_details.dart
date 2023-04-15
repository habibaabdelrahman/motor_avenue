import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class car_details extends StatelessWidget {
  const car_details ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(196, 187, 159, 1.0),
                Color.fromRGBO(0, 0, 0, 0.96),

               /* Color.fromRGBO(0, 0, 0, 1),
                Color.fromRGBO(208, 196, 153, 0.7058823529411765),*/
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
                          iconSize: 35,
                          color: Colors.black,
                          padding: const EdgeInsets.only(top: 50, left:20)
                      ),
                      Expanded(child:
                      Center(
                        child:  Container(
                          margin: const EdgeInsets.only(top: 60),
                          child: Image.asset(
                            'assets/images/black logoo.png',
                            width: 72,
                          ),
                        ),
                      ),
                      ),
                      IconButton(
                          icon: const Icon(Icons.share_outlined),
                          onPressed: () {},
                          iconSize: 35,
                          color: Colors.black,
                          padding: const EdgeInsets.only(top: 50,right: 20)
                      ),
                    ],
                  ),


                  WidgetAnimator(
                    incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                      duration: Duration(seconds: 3),),
                      child:  Container(
                        padding: EdgeInsets.only(bottom: 16.6),
                          margin: const EdgeInsets.only(top: 13 ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(36),topRight: Radius.circular(36)),
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromRGBO(234, 234, 234, 0.11).withOpacity(0.2),
                                const Color.fromRGBO(0, 0, 0, 0.17).withOpacity(0.2),
                                const Color.fromRGBO(47, 47, 47, 0.17).withOpacity(0.2),
                              ],
                              begin: FractionalOffset.bottomCenter,
                              end: FractionalOffset.topCenter,
                            ),
                          ),

                          child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Stack(
                              children: <Widget>[

                                  Center(
                                    child:Padding(padding: const EdgeInsets.only(top: 7),
                                  child: Icon(Icons.maximize_rounded,color: Colors.white,size: 60,),),),
                                        Container(
                                          margin: EdgeInsets.only(top: 35,left: 20,right: 20),
                                   child:  CarouselSlider(
                                      options: CarouselOptions(
                                        height: 175.78,
                                        autoPlay: true,
                                        viewportFraction: 1.0,
                                      ),
                                      items: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(21.0),
                                       child: Image.asset('assets/images/car 1.png', fit: BoxFit.cover),),
                                       ClipRRect(
                                         borderRadius: BorderRadius.circular(21.0),
                                        child: Image.asset('assets/images/car1_1.png', fit: BoxFit.cover),),
                                       ClipRRect(
                                         borderRadius: BorderRadius.circular(21.0),
                                       child: Image.asset('assets/images/car1_2.png', fit: BoxFit.cover),
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(21.0),
                                          child: Image.asset('assets/images/car1_3.png', fit: BoxFit.cover),
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(21.0),
                                          child: Image.asset('assets/images/car1_4.png', fit: BoxFit.cover),
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(21.0),
                                          child: Image.asset('assets/images/car1_5.png', fit: BoxFit.cover),
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(21.0),
                                          child: Image.asset('assets/images/car1_6.png', fit: BoxFit.cover),
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(21.0),
                                          child: Image.asset('assets/images/car1_7.png', fit: BoxFit.cover),
                                        ),
                                      ],
                                  ),
                                        ),
                        ],
                  ),

                               //  SizedBox(height: 15,),
                                  Stack(
                                    children:[
                                      Divider(
                                        height: 45,
                                        thickness: 2,
                                        indent: 20,
                                        endIndent: 20,
                                        color: Colors.black,
                                      ),

                                 Positioned(
                                   child: Center(
                                 child: Container(
                                   margin: EdgeInsets.only(top: 10),
                                    width: 170,
                                    height: 26,
                                   child: Center(
                                     child: Text(
                                      'MANSORY presents',
                                      style: TextStyle(
                                          color: Colors.white ,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Hind'
                                      ),
                                    ),
                                   ),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
        ),
    ),
          ],
    ),
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "THE BENTLEY CONTINENTAL GT", textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Hind'
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 27,left: 20),
                                        child: const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Cabriolet V8 as complete conversion,",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:18,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Hind'
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),

                                  Container(
                                    margin: const EdgeInsets.only(left: 20,right: 20),
                                    child: const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "13 YEARS ARTER THE FIRST SPECIAL", textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Hind'
                                        ),
                                      ),
                                    ),
                                   ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 20,right: 20),
                                 child: Text("colorized "
                                      "MANSORY Vitesse rosé based on a Bentley Continental GT"
                                      "displayed at the Frankfurt IAA Motorshow,today we launch the "
                                      "MANSORY Vitesse one of one with his dominating color mixture of "
                                      "black and yellow based on the Bentley Continental GT Convertible at the ex- and "
                                      "interior, " ,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Hind'),
                                  ),),
                                  Container(
                                    margin: const EdgeInsets.only(left: 20,right: 20),
                                    child: const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Which is only offered just one time.", textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Hind'
                                        ),
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children:[
                                  Divider(
                                    height: 45,
                                    thickness: 2,
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.black,
                                  ),

                                  Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 20,right: 20,top: 13),
                                    child: Text("DESCRIPTION" ,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:15,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Hind'),
                                    ),
                                  ),
    ),
          ]
                                  ),

                                  
                                  Row(
                                    children: [
                                      Padding(padding: EdgeInsets.only(left: 25)),
                                      Icon(Icons.gas_meter,color: Colors.white,size: 17,),
                                      Text('FUEL TYPE',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                      Text(' BENZINE',
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 60)),
                                      Icon(Icons.monetization_on_outlined,color: Colors.amber,),

                                      Text('7,924,000',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children:[
                                      Padding(padding: EdgeInsets.only(left: 25,top: 20)),
                                  Icon(Icons.calendar_month_outlined,color: Colors.white,size: 17,),
                                  Text('YEAR',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:13,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Hind'),
                                  ),
                                      Text('2022',
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children:[
                                      Padding(padding: EdgeInsets.only(left: 25,top: 20)),
                                      Icon(Icons.account_tree_outlined,color: Colors.white,size: 17,),
                                      Text('TRANSMISSION TYPE',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                      Text( ' AUTOMATIC',
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children:[
                                      Padding(padding: EdgeInsets.only(left: 25,top: 20)),
                                      Icon(Icons.api_outlined,color: Colors.white,size: 17,),
                                      Text('CONDITION',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                      Text( ' NEW',
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children:[
                                      Padding(padding: EdgeInsets.only(left: 25,top: 20)),
                                      Icon(Icons.format_color_fill_outlined,color: Colors.white,size: 17,),
                                      Text('COLOR',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                      Text( ' BLACK',
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children:[
                                      Padding(padding: EdgeInsets.only(left: 25,top: 20)),
                                      Icon(Icons.directions_car_filled_outlined,color: Colors.white,size: 17,),
                                      Text('BODY TYPE',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                      Text( ' ROADSTER',
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children:[
                                      Padding(padding: EdgeInsets.only(left: 25,top: 20)),
                                      Icon(Icons.beach_access,color: Colors.white,size: 17,),
                                      Text('CONDITION',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                      Text( ' NEW',
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize:13,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Hind'),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 15,),

                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                  Container(
                                      height: 34,
                                      width: 135,
                                      child: ElevatedButton(
                                        child: const Text('ORDER NOW',
                                          style:   TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'HIND'
                                          ),
                                        ),

                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                                          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)
                                              )
                                          ),
                                        ),
                                        onPressed: () {},
                                      )
                                  ),

                                     SizedBox(width: 20,),

                                     Container(
                                        height: 34,
                                        width: 34,
                                        child: TextButton(
                                          child: Icon(Icons.add_shopping_cart_outlined,size: 20,
                                            color: Color.fromRGBO(75, 75, 75, 1),),
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(209, 209, 209, 1)),
                                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(5)
                                                )
                                            ),
                                          ),
                                          onPressed: () {
                                          },
                                        )
                                    ),
                                    ]
                                  ),


                                ],
                              ),
                          ),
                        )
                  ),
                ]
            ),
        )
    );
  }
}
