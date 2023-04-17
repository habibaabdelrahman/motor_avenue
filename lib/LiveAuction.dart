import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LiveAuction extends StatelessWidget {
  const LiveAuction ({Key? key}) : super(key: key);


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
                        padding: const EdgeInsets.only(top: 50, left:20)
                    ),
                    Expanded(
                      child:
                    Center(
                      child:  Container(
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
                        onPressed: () {},
                        iconSize: 35,
                        color: Colors.white,
                        padding: const EdgeInsets.only(top: 50,right: 20)
                    ),
                  ],
                ),

                Stack(
                  children:[
                WidgetAnimator(
                  incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                    duration: Duration(seconds: 3),),
                  child: Container(
                    margin: EdgeInsets.only(left: 10,right: 10,top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21)),
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
                                children:[
                                  const Padding(padding: const EdgeInsets.only(top: 5,left: 49),
                                    child: const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(' LIVE',textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Hind',
                                          color: Colors.white,
                                        ),),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 3),
                                  child:Icon(Icons.av_timer,size: 50,color: Colors.white,),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 22,left: 49,bottom: 4),
                                    child: const Text('AUCTIONS',
                                      style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Hind',
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                WidgetAnimator(
                    incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                      duration: Duration(seconds: 3),),
                    child:  Container(
                      //padding: EdgeInsets.only(bottom: 5),
                      margin: const EdgeInsets.only(top: 74 ,left: 10,right: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromRGBO(0, 0, 0, 0.13).withOpacity(0.2),
                            const Color.fromRGBO(95, 81, 45, 0.42).withOpacity(0.2),
                          ],
                          end: FractionalOffset.bottomCenter,
                          begin: FractionalOffset.topCenter,
                        ),
                      ),
                      
                      child: Container(
                        margin: EdgeInsets.all(10),
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

                       child:Container(
                        margin: EdgeInsets.all(10),
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

                      child: Container(
                        margin: EdgeInsets.all(10),
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

                    )
                  ),
                  ]
                ),
              ]
            ),
        )
    );
  }
}
