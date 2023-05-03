import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class store extends StatelessWidget {
  const store({Key? key}) : super(key: key);

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
          /*Row(
            children: [
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
                    ],
                  ),
                ),
              ),
              Text(
                'AVENUE STORE',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),*/

          Stack(
              children:[
                WidgetAnimator(
                  incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                    duration: Duration(seconds: 3),),
                  child: Container(
                    margin: EdgeInsets.only(left: 15,right: 15,top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromRGBO(217, 217, 217, 1),
                          const Color.fromRGBO(217, 217, 217, 1),
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
                                      child: Text(' AVENUE',textAlign: TextAlign.left,
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
                                    child: Image.asset('assets/images/logo white.png',width: 37,)
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 22,left: 49,bottom: 4),
                                    child: const Text('STORE',
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
                      margin: const EdgeInsets.only(top: 30 ,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(9),topRight: Radius.circular(9)),
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromRGBO(217, 217, 217, 1),
                            const Color.fromRGBO(217, 217, 217, 1),
                          ],
                          end: FractionalOffset.bottomCenter,
                          begin: FractionalOffset.topCenter,
                        ),
                      ),



                    ),
                ),
              ]
          ),







        ]),
      ),
    );
  }
}
