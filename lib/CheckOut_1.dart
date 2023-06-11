import 'package:flutter/material.dart';
import 'package:motor_avenue/CheckOut_3.dart';
import 'package:motor_avenue/Home.dart';
import 'package:motor_avenue/checkoutfour.dart';
import 'package:motor_avenue/checkoutsec.dart';
import 'package:motor_avenue/chekoutfirst.dart';

class CheckOut_1 extends StatefulWidget {
  @override
  State<CheckOut_1> createState() => _CheckOut_1State();
}

class _CheckOut_1State extends State<CheckOut_1> {
  int currentStep = 0;
  List<Widget> screens = [
    CheckOutFirst(),
    checkoutsec(),
    checkoutfour(),
  ];

  void goToNextStep() {
    setState(() {
      currentStep = currentStep + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(196, 187, 159, 1.0),
                Color.fromRGBO(0, 0, 0, 1.0),
              ],
            ),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    iconSize: 32,
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 30, left: 15)),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 230,
                              top: 6,
                            ),
                            child: Image.asset(
                              'assets/images/logo white.png',
                              height: 37,
                              width: 33,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 28, top: 4),
                            child: Text(
                              ' CHECKOUT',
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 203, top: 21),
                            child: Icon(
                              Icons.add_shopping_cart_outlined,
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
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(17.0)),
              child: Container(
                height: 75,
                width: 370,
                child: Theme(
                  data: ThemeData(
                    colorScheme: ColorScheme.light(
                        primary: Colors.amber,
                        background: Colors.grey,
                        onBackground: Colors.deepOrange,
                        surface:Colors.orange,
                        ),
                    canvasColor:
                        Color.fromRGBO(236, 235, 235, 0.9803921568627451),
                  ),
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
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.left,
                        ),
                        content: CheckOutFirst(),
                      ),
                      Step(
                        isActive: currentStep >= 1,
                        state: currentStep > 1
                            ? StepState.complete
                            : StepState.indexed,
                        title: Text(
                          'PAYMENT',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w900),
                        ),
                        content: checkoutsec(),
                      ),
                      Step(
                          isActive: currentStep >= 2,
                          state: currentStep > 2
                              ? StepState.complete
                              : StepState.indexed,
                          title: Text(
                            'REVIEW',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w900),
                          ),
                          content: checkoutfour()),
                    ],
                  ),
                ),
              ),
            ),
            screens[currentStep],
            Container(
                height: 45,
                width: 350,
                margin: const EdgeInsets.only(top: 10, bottom: 15),
                child: ElevatedButton(
                  child: const Text(
                    'Next',
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
                            borderRadius: BorderRadius.circular(13))),
                  ),
                  onPressed: goToNextStep,
                )),
          ]),
        ),
      ),
    );
  }
}
