import 'package:flutter/material.dart';

class dartcheck extends StatefulWidget {
  const dartcheck({Key? key}) : super(key: key);

  @override
  State<dartcheck> createState() => _dartcheckState();
}

class _dartcheckState extends State<dartcheck> {
  int currentStep = 0;
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
              width: 500,
              child:Theme(
                data: ThemeData(canvasColor: Colors.transparent),
              child: Stepper(
                currentStep: currentStep,
                type: StepperType.horizontal,
                steps: const[
                  Step(
                      title: Text('SHIPPING',style: TextStyle(color: Colors.white),),
                      content: Text('step1')
                  ),
                  Step(
                      title: Text('PAYMENT',style: TextStyle(color: Colors.white),),
                      content: Text('step1')
                  ),
                  Step(
                      title: Text('REVIEW',style: TextStyle(color: Colors.white),),
                      content: Text('step1')
                  ),
                ],),
      ),
            )
          ],
        ),
      )

    );
  }
}
