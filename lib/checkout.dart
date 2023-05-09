import 'package:flutter/material.dart';

class checkout extends StatelessWidget {
  final _controllar = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //background color
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
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
                    color: Colors.black87,
                    padding: const EdgeInsets.only(top: 60, left: 15)),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 55),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 250,
                              top: 6,
                            ),
                            child: Image.asset(
                              'assets/images/black logoo.png',
                              height: 37,
                              width: 37,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 35, top: 4),
                            child: Text(
                              ' CHECKOUT',
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 215, top: 23),
                            child: Icon(
                              Icons.add_shopping_cart_outlined,
                              size: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
           child: Row(
               children: [
              Padding(
                padding: EdgeInsets.only(left: 25, top: 20),
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.looks_one_sharp),
                      Text(
                        'SHIPPING',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Hind',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                    ),
              ),
                 Padding(
                   padding: EdgeInsets.only(left: 20, top: 20),
                   child: Container(
                     child: Row(
                       children: [
                         Icon(Icons.three_k),
                         Text(
                           'PAYMENT',
                           style: TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.bold,
                             fontFamily: 'Hind',
                             color: Colors.white,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.only(left: 20, top: 20),
                   child: Container(
                     child: Row(
                       children: [
                         Icon(Icons.looks_two),
                         Text(
                           'REVIEW',
                           style: TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.bold,
                             fontFamily: 'Hind',
                             color: Colors.white,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
              Padding(
                padding: EdgeInsets.only(left: 45, top: 20),
                child: SizedBox(
                    width: 70,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.facebook,
                        color: Colors.black,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 255, 255, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 45, top: 20),
                child: SizedBox(
                    width: 70,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.facebook,
                        color: Colors.black,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 255, 255, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                      ),
                    )),
              ),
            ]),
    ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'PLEASE APPLY YOUR ADDRESS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'use the info provided to help you use the',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'accuracy of yur location',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              child: Column(children: [
                        Container(
                          // padding: const EdgeInsets.only(top: 15),
                          width: 345,
                          height: 60,
                          margin: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            validator: (value) => value!.isEmpty
                                ? 'You must enter a valid street'
                                : null,
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
                  // padding: const EdgeInsets.only(top: 15),
                  width: 345,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) => value!.isEmpty
                        ? 'You must enter a valid street'
                        : null,
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
                  width: 345,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) => value!.isEmpty
                        ? 'You must enter a valid street'
                        : null,
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
                  // padding: const EdgeInsets.only(top: 15),
                  width: 345,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) => value!.isEmpty
                        ? 'You must enter a valid street'
                        : null,
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
                  // padding: const EdgeInsets.only(top: 15),
                  width: 345,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) => value!.isEmpty
                        ? 'You must enter a valid street'
                        : null,
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
                  // padding: const EdgeInsets.only(top: 15),
                  width: 345,
                  height: 60,
                  margin: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    validator: (value) => value!.isEmpty
                        ? 'You must enter a valid street'
                        : null,
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
              Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 10) ,
                       child: Checkbox(
                          value: false,
                          onChanged: (bool? value) {},
                          activeColor: Colors.blue,
                          checkColor: Colors.white,
                        ),
        ),
                        Padding(padding:EdgeInsets.only(top: 15,),
                        child:Align(
                          alignment: Alignment.centerLeft,
                        child:Column(
                          children:[
                        Text(
                          'My Billing Address Is The same As My',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Shipping Address',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          ]
                        ),
        ),
                        ),
                      ],
                    ),
              ]
            ),
                Container(
                    height: 50,
                    width: 200,
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
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
                                    borderRadius: BorderRadius.circular(15))),
                      ),
                      onPressed: () {},
                    )),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
