import 'package:flutter/material.dart';
class checkoutThree extends StatelessWidget {
  const checkoutThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'PLEASE CHOOSE A PAYMENT METHOD',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3, left: 44),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You will not be charged until you review this ',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 44),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'order on the next page',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ]),
        Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: const Color.fromRGBO(255, 255, 255, 0.6196078431372549),
                ),
                child: Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 5),
                      alignment: Alignment.center,
                      height: 70,
                      width: 150,
                      child: TextButton(
                        child: Row(children: [
                          Stack(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 3),
                              child: Icon(
                                Icons.bookmark_add_outlined,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                            Stack(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 28, top: 3),
                                child: Text(
                                  'SAVE PAYMENT',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'HIND'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 16, left: 28, bottom: 3),
                                child: Text(
                                  'METHOD',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'HIND'),
                                ),
                              ),
                            ]),
                          ]),
                        ]),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(
                                  236, 235, 235, 0.9803921568627451)),
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color:
                  const Color.fromRGBO(236, 235, 235, 0.9803921568627451),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.attach_money,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15),
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
                            padding: EdgeInsets.only(top: 28),
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
                        ],
                      ),
                    ]),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 27, top: 10),
                              child: Text(
                                'NAME ON CARD',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Hind',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 305,
                      height: 60,
                      margin: const EdgeInsets.only(top: 3),
                      child: TextField(
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor:
                          Color.fromRGBO(218, 217, 217, 0.6470588235294118),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(
                                    218, 217, 217, 0.6470588235294118)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(
                                    218, 217, 217, 0.6470588235294118)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(
                                    218, 217, 217, 0.6470588235294118)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 26, top: 10),
                              child: Text(
                                'CARD NUMBER',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Hind',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 305,
                      height: 60,
                      margin: const EdgeInsets.only(top: 3),
                      child: TextField(
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor:
                          Color.fromRGBO(218, 217, 217, 0.6470588235294118),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(
                                    218, 217, 217, 0.6470588235294118)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(
                                    218, 217, 217, 0.6470588235294118)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(
                                    218, 217, 217, 0.6470588235294118)),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(right: 23, top: 10),
                                    child: Text(
                                      'EXPIRATION DATE',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Hind',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 147,
                            height: 60,
                            margin: const EdgeInsets.only(top: 2),
                            child: TextField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(
                                    218, 217, 217, 0.6470588235294118),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(
                                          218, 217, 217, 0.6470588235294118)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(
                                          218, 217, 217, 0.6470588235294118)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(
                                          218, 217, 217, 0.6470588235294118)),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(
                          width: 10,
                        ),
                        Column(children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 0, top: 10, right: 40),
                                    child: Text(
                                      'SECUIRTY CODE',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Hind',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 147,
                            height: 60,
                            margin: const EdgeInsets.only(top: 2),
                            child: TextField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(
                                    218, 217, 217, 0.6470588235294118),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(
                                          218, 217, 217, 0.6470588235294118)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(
                                          218, 217, 217, 0.6470588235294118)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(
                                          218, 217, 217, 0.6470588235294118)),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Container(
                          alignment: Alignment.center,
                          height: 90,
                          width: 110,
                          child: TextButton(
                            child: Row(children: [
                              Icon(
                                Icons.add_card,
                                size: 40,
                                color: Colors.black,
                              ),
                              Stack(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'ADD',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'HIND'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 12, left: 10),
                                  child: Text(
                                    'CARD',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'HIND'),
                                  ),
                                ),
                              ]),
                            ]),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(209, 209, 209, 1)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                            onPressed: () {},
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ]),
      ],
    );
  }
}
