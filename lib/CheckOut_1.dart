import 'package:flutter/material.dart';
import 'package:motor_avenue/CheckOut_2.dart';
import 'package:motor_avenue/CheckOut_3.dart';
import 'package:motor_avenue/Home.dart';

class CheckOut_1 extends StatefulWidget {
  @override
  State<CheckOut_1> createState() => _CheckOut_1State();
}

class _CheckOut_1State extends State<CheckOut_1> {
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
            SizedBox(
              height: 10,
            ),
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
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'PLEASE APPLY YOUR ADDRESS',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'use the info provided to help you use the',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Color.fromRGBO(207, 207, 207, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'accuracy of yur location',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Color.fromRGBO(207, 207, 207, 1),
                  ),
                ),
              ),
            ),
            Container(
              child: Column(children: [
                Container(
                  width: 355,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'You must enter a valid street' : null,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Street',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 355,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'You must enter a valid street' : null,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'City',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  // padding: const EdgeInsets.only(top: 15),
                  width: 355,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'You must enter a valid street' : null,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Region',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 355,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'You must enter a valid street' : null,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Door Number ',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 355,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'You must enter a valid street' : null,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 355,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'You must enter a valid street' : null,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Postial Code',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 0),
                          child: Checkbox(
                            value: false,
                            fillColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                color: Colors.white,
                                width: 25,
                              ),
                            ),
                            onChanged: (bool? value) {},
                            activeColor: Colors.white,
                            checkColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 16,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(children: [
                              Text(
                                'My Billing Address Is The same As My',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Shipping Address',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                Container(
                    height: 45,
                    width: 350,
                    margin: const EdgeInsets.only(top: 15, bottom: 20),
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
                                    borderRadius: BorderRadius.circular(13))),
                      ),
                      onPressed: goToNextStep,
                    )),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
