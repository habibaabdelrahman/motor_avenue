import 'package:flutter/material.dart';

class contactus extends StatelessWidget {
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

          child: Column(children: [
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
                              ' CONTACT US',
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 240, top: 26),
                            child: Icon(
                              Icons.headset_mic_sharp,
                              size: 14,
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
            Padding(
              padding: EdgeInsets.only(top: 50, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'GET IN TOUCH',
                  style: TextStyle(
                    fontSize: 30,
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
                  '24/7 We will answer your questions and problems',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 20),
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
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21)),
                color: const Color.fromRGBO(255, 255, 255, 0.7),
              ),
              child: Column(children: [
                Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // padding: const EdgeInsets.only(top: 15),
                          width: 160,
                          height: 70,
                          margin: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            validator: (value) => value!.isEmpty
                                ? 'You must enter a valid name'
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
                              labelText: 'Frist Name',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          //padding: const EdgeInsets.only(top: 15),
                          width: 160,
                          height: 70,
                          margin: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            validator: (value) => value!.isEmpty
                                ? 'You must enter a valid name'
                                : null,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              labelText: 'Last Name',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                ),
                Container(
                  //padding: const EdgeInsets.only(top: 2),
                  width: 345,
                  height: 60,
                  margin: const EdgeInsets.only(top: 0),
                  child: TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'You must enter a valid E-mail' : null,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'E-mail',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  //padding: const EdgeInsets.only(top: 2),
                  width: 345,
                  height: 60,
                  margin: const EdgeInsets.only(top: 0),
                  child: TextFormField(
                    validator: (value) => value!.isEmpty
                        ? 'You must enter a valid phone number'
                        : null,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Phone',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 345,
                  height: 80,
                  margin: const EdgeInsets.only(top: 0),
                  child: TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'You must enter ' : null,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 150),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Describe Your Issue',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    width: 200,
                    margin: const EdgeInsets.only(top: 140, bottom: 20),
                    child: ElevatedButton(
                      child: const Text(
                        'Send',
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
