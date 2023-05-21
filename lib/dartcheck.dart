import 'package:flutter/material.dart';
import 'package:motor_avenue/CheckOut_1.dart';
import 'package:motor_avenue/CheckOut_2.dart';
import 'package:motor_avenue/CheckOut_3.dart';

class dartcheck extends StatefulWidget {
  const dartcheck({Key? key}) : super(key: key);

  @override
  State<dartcheck> createState() => _dartcheckState();
}


class _dartcheckState extends State<dartcheck> {
  int currentStep = 0;

    void goToNextStep() {
      setState(() {
        currentStep = currentStep += 1;
      });

      /*if (currentStep < 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CheckOut_1()),
        );
      }*/
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
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
                    padding: const EdgeInsets.only(top: 60, left: 15)),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 55),
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
                            padding: EdgeInsets.only(left: 203, top: 23),
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
            Container(
              height: 75,
              width: 400,
              child:Theme(
                data: ThemeData(canvasColor: Colors.transparent,
                  colorScheme: Theme.of(context).colorScheme.copyWith(
                    primary: Colors.white, // Color of the active step
                    onPrimary: Colors.black, // Text color of the active step
                    secondary: Colors.grey, // Color of the complete step
                    onSecondary: Colors.white, // Text color of the complete step
                  ),),
              child: Stepper(
                onStepContinue: goToNextStep,
                currentStep: currentStep,
                type: StepperType.horizontal,
                steps: [
                  Step(
                    state: currentStep > 0
                        ? StepState.complete
                        : StepState.indexed,
                      isActive: currentStep >= 0,
                      title: Text('SHIPPING',style: TextStyle(color: Colors.white),),
                      content: CheckOut_1()

                  ),
                  Step(
                      state: currentStep > 1
                          ? StepState.complete
                          : StepState.indexed,
                      isActive: currentStep >= 1,
                      title: Text('PAYMENT',style: TextStyle(color: Colors.white),),
                      content: CheckOut_2()
                  ),
                  Step(
                      state: currentStep > 2
                          ? StepState.complete
                          : StepState.indexed,
                      isActive: currentStep >= 2,
                      title: Text('REVIEW',style: TextStyle(color: Colors.white),),
                      content: CheckOut_3()
                  ),
                ],),
      ),
            ),

            Container(
                height: 50,
                width: 350,
                margin: const EdgeInsets.only(top: 35, bottom: 20),
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
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: goToNextStep,
                )),
          ],
        ),
      )

    );
  }
}
