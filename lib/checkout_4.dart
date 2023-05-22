import 'package:flutter/material.dart';

import 'CheckOut_1.dart';
import 'CheckOut_2.dart';
import 'CheckOut_3.dart';
class checkout_4 extends StatefulWidget {
  const checkout_4({Key? key}) : super(key: key);

  @override
  State<checkout_4> createState() => _checkout_4State();
}

class _checkout_4State extends State<checkout_4> {

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
                        ),
                        child: Image.asset(
                          'assets/images/logo white.png',
                          height: 37,
                          width: 37,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35, top: 2),
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
                        padding: EdgeInsets.only(left: 215, top: 19),
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
        Padding(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'PLEASE CONFIRM AND SUBMIT YOUR ORDER',
              style: TextStyle(
                fontSize: 16,
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
              "By clicking submit order,you agree to Motor Avenue's" ,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Hind',
                color: Color.fromRGBO(207, 207, 207, 1),
              ),
            ),
          ),
        ),
     SizedBox(height: 3,),
     Row(
       children: [
         Padding(
           padding: EdgeInsets.only(left: 31),
           child: Align(
             alignment: Alignment.centerLeft,
             child: Text(
               'Terms of use',
               style: TextStyle(
                 decoration: TextDecoration.underline,
                 decorationColor:Color.fromRGBO(207, 207, 207, 1) ,
                 decorationThickness: 2.0,
                 fontSize: 14,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Hind',
                 color: Color.fromRGBO(207, 207, 207, 1),
               ),
             ),
           ),
         ),
         Padding(
           padding: EdgeInsets.only(left: 0),
           child: Align(
             alignment: Alignment.centerLeft,
             child: Text(
               ' and ',
               style: TextStyle(
                 fontSize: 14,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Hind',
                 color: Color.fromRGBO(207, 207, 207, 1),
               ),
             ),
           ),
         ),
         Padding(
           padding: EdgeInsets.only(left: 0),
           child: Align(
             alignment: Alignment.centerLeft,
             child: Text(
               'Privacy Policy',
               style: TextStyle(
                 decoration: TextDecoration.underline,
                 decorationColor:Color.fromRGBO(207, 207, 207, 1) ,
                 decorationThickness: 2.0,
                 fontSize: 14,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Hind',
                 color: Color.fromRGBO(207, 207, 207, 1),
               ),
             ),
           ),
         ),
       ],
     ),

        SizedBox(height: 30,),
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
              height: 155,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.grey,
              ),
              child: Padding(padding:EdgeInsets.only(top: 80,left: 20),
                child:Column(
                  children:[
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10,),
                          child: Text(
                            'NAME',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Hind',
                              color: Color.fromRGBO(79, 79, 79, 1.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60,),
                          child: Text(
                            'SAEED TAIMOOR',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Hind',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10,),
                          child: Text(
                            'Street',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Hind',
                              color: Color.fromRGBO(79, 79, 79, 1.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60,),
                          child: Text(
                            '1313 wolf pen road',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Hind',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
        ),

            ),
            Container(
              width: 345,
              height: 60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white,
              ),
              child:Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:1,left: 10),
                    child: Text(
                      'SHIPING ADDRES',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(padding:EdgeInsets.only(left: 140),
                    child:Container(
                      width: 60,
                      height: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.grey,
                      ),
                      child: TextButton(onPressed:(){}, child:Text(
                        'EDIT',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Hind',
                          color: Colors.black,
                        ),
                      ), ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Stack(
          children: [
            Container(
              width: 345,
              height: 180,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.grey,
              ),
              child: Padding(padding:EdgeInsets.only(top: 80,left: 20),
                child:Column(
                    children:[
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              'Subtotal',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Hind',
                                color: Color.fromRGBO(79, 79, 79, 1.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60,),
                            child: Text(
                              '3,000,000,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              'Delivery',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Hind',
                                color: Color.fromRGBO(79, 79, 79, 1.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60,),
                            child: Text(
                              '300,000,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Hind',
                                color: Color.fromRGBO(79, 79, 79, 1.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60,),
                            child: Text(
                              '3,300,000,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]
                ),
              ),

            ),
            Container(
              width: 345,
              height: 60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white,
              ),
              child:Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:1,left: 10),
                    child: Text(
                      'ORDER SUMMARY',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.black,
                      ),
                    ),
                  ),





                ],
              ),
            ),
            Container(
                height: 50,
                width: 350,
                margin: const EdgeInsets.only(top: 230, bottom: 20),
                child: ElevatedButton(
                  child: const Text(
                    'SUBMIT',
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
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: goToNextStep,
                )),
          ],
        ),



      ],
    ),

  ),

),



    );
  }
}
