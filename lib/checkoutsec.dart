import 'package:flutter/material.dart';
import 'package:motor_avenue/CheckOut_3.dart';
class checkoutsec extends StatelessWidget {
  const checkoutsec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'PLEASE CHOOSE A PAYMENT METHOD',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 41),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You will not be charged until you review this ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 41),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'order on the next page',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hind',
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ]
        ),
        Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 370),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color:
                  const Color.fromRGBO(255, 255, 255, 0.6196078431372549),
                ),
                child: Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 15),
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


                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/car 1.png',
                            height: 187,
                            width: 400,
                          ),
                        ),
                      ),
                      Container(
                          height: 37,
                          width: 63,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 20,
                                offset: Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.only(
                            top: 145,
                            left: 290,
                          ),
                          child: TextButton(
                            child: Icon(
                              Icons.slideshow_rounded,
                              size: 25,
                              color: Colors.black,
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(255, 255, 255, 0.4)),
                              foregroundColor:
                              MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(15)),
                                  )),
                            ),
                            onPressed: () {},
                          )),
                    ]),
                    Center(
                      child: Text(
                        'OR',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'HIND'),
                      ),
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CheckOut_3()),
                              );
                            },
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
