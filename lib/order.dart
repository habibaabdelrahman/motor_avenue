import 'package:flutter/material.dart';

import 'CheckOut_1.dart';
import 'CheckOut_2.dart';
import 'CheckOut_3.dart';
class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  int currentStep = 0;

  void goToNextStep() {
    setState(() {
      currentStep = currentStep += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(


        child: Container(


          height: 803,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(196, 187, 159, 1.0),
                Color.fromRGBO(0, 0, 0, 0.96),
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
                      padding: const EdgeInsets.only(top: 45, left: 15)),
                  Expanded(
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 250,
                                top: 6,
                                left: 15,
                              ),
                              child: Image.asset(
                                'assets/images/logo white.png',
                                height: 37,
                                width: 37,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 55, top: 2),
                              child: Text(
                                'ORDERS',
                                style: TextStyle(
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Hind',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 180, top: 19),
                              child: Icon(
                                Icons.event_note,
                                size: 16,
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
              SizedBox(height: 10,),
              Container(
                height: 75,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    border: Border.all(color: Colors.black
                    )
                ),
                child: Theme(
                  data: ThemeData(
                      canvasColor:Color.fromRGBO(
                          255, 255, 255, 0.7294117647058823),
                      highlightColor: Colors.cyan),
                  child: Stepper(
                    onStepContinue: goToNextStep,
                    currentStep: currentStep,
                    type: StepperType.horizontal,
                    steps: [
                      Step(
                        isActive: currentStep >= 0,
                        state: currentStep > 0
                            ? StepState.complete
                            : StepState.indexed,
                        title: Text(
                          'SHIPPING',
                          style: TextStyle(color: Colors.white),
                        ),
                        content: CheckOut_1(),
                      ),
                      Step(
                        isActive: currentStep >= 1,
                        state: currentStep > 1
                            ? StepState.complete
                            : StepState.indexed,
                        title: Text(
                          'PAYMENT',
                          style: TextStyle(color: Colors.white),
                        ),
                        content: CheckOut_2(),
                      ),
                      Step(
                          isActive: currentStep >= 2,
                          state: currentStep > 2
                              ? StepState.complete
                              : StepState.indexed,
                          title: Text(
                            'REVIEW',
                            style: TextStyle(color: Colors.white),
                          ),
                          content: CheckOut_3()),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Stack(
                children: [
                  Container(
                    width: 345,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey,
                    ),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child:
                      Padding(padding: EdgeInsets.only(right: 5),

                        child:Icon(
                          Icons.add_card,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),

                  ),
                  Container(
                    width: 172.5,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child:Row( children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5,),
                        child: Icon(
                          Icons.attach_money,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top:1),
                            child: Text(
                              'PAYMENT',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 14),
                            child: Text(
                              'METHOD',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(padding:EdgeInsets.only(left: 105,top: 2),

                            child:Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),

                        ],
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Stack(
                children: [
                  Container(
                    width: 345,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey,
                    ),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child:
                      Padding(padding: EdgeInsets.only(right: 5),

                        child:Icon(
                          Icons.add_card,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),

                  ),
                  Container(
                    width: 172.5,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child:Row( children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5,),
                        child: Icon(
                          Icons.attach_money,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top:1),
                            child: Text(
                              'PAYMENT',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 14),
                            child: Text(
                              'METHOD',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(padding:EdgeInsets.only(left: 105,top: 2),

                            child:Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),

                        ],
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Stack(
                children: [
                  Container(
                    width: 345,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey,
                    ),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child:
                      Padding(padding: EdgeInsets.only(right: 5),

                        child:Icon(
                          Icons.add_card,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),

                  ),
                  Container(
                    width: 172.5,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child:Row( children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5,),
                        child: Icon(
                          Icons.attach_money,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top:1),
                            child: Text(
                              'PAYMENT',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 14),
                            child: Text(
                              'METHOD',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(padding:EdgeInsets.only(left: 105,top: 2),

                            child:Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),

                        ],
                      ),
                    ]),
                  ),
                ],
              ),






            ],
          ),


        ),
      ),



    );
  }
}
