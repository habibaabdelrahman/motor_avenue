import 'package:flutter/material.dart';
import 'package:motor_avenue/Home.dart';

class Requests extends StatefulWidget {
  const Requests({Key? key}) : super(key: key);

  @override
  State<Requests> createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  bool _isPopupVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
          Container(
            height: 830,
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ));
                    },
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
                              right: 210,
                              top: 6,
                            ),
                            child: Image.asset(
                              'assets/images/logo white.png',
                              height: 35,
                              width: 35,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40, top: 4),
                            child: Text(
                              'REQUESTS',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.white,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Stack(children: [
              Container(
                height: 95,
                margin: EdgeInsets.only(left: 20, right: 20, top: 225),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  color:
                  const Color.fromRGBO(66, 66, 66, 1),
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color.fromRGBO(113, 113, 113, 0.55),
                    ),
                    margin: EdgeInsets.only(top: 29),
                    alignment: Alignment.centerLeft,
                    height: 45,
                    width: 335,
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Stack(
                            children: [
                              Text(
                                'CURRENT PRICE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: 'Hind'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 18,
                                ),
                                child: Text(
                                  'CURRENT TIME',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Hind'),
                                ),
                              ),

                            ],
                          ),

                          SizedBox(width: 10,),

                          Stack(
                            children: [
                              Container(
                                height: 3,
                              width: 95,
                              child:Divider(
                                indent: 3,
                                endIndent: 3,
                                thickness: 3,
                                color: Colors.white,
                              ),
                  ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 18,
                                ),
                                child: Container(
                                  height: 3,
                                  width: 95,
                                  child:Divider(
                                    indent: 3,
                                    endIndent: 3,
                                    thickness: 3,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                            ],
                          ),

                          SizedBox(width: 10,),
                          Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.attach_money,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '432,300',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Hind'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 18,left: 3
                                ),
                                child: Text(
                                  '1 MONTH',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Hind'),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 20,),
                          Stack(
                            children: [
                              Icon(
                                Icons.done_all,
                                size: 20,
                                color: Colors.white,
                              ),

                              Padding(
                                padding: EdgeInsets.only(
                                    top: 20,
                                ),
                                child:Icon(
                                  Icons.clear,
                                  size: 22,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),



              Container(
                height: 67,
                margin: EdgeInsets.only(left: 20, right: 20, top: 190),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(96, 96, 96, 1),
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color.fromRGBO(151, 151, 151, 1),
                    ),
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    height: 45,
                    width: 335,
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Stack(
                            children: [
                              Text(
                                'HTUNDAI',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: 'Hind'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 18,
                                ),
                                child: Text(
                                  '120 N LINE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Hind'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          VerticalDivider(
                            width: 20,
                            indent: 10,
                            endIndent: 10,
                            thickness: 4,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Stack(
                            children: [
                              Text(
                                'ADD PRICE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: 'Hind'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 18,
                                ),
                                child: Text(
                                  'ADD TIME',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Hind'),
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                _isPopupVisible = true;
                              });
                            },
                            iconSize: 32,
                            color: Colors.white,
                            padding: const EdgeInsets.only(left: 100),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),





              Container(
                margin: EdgeInsets.only(left: 21, right: 21, top: 15, bottom: 5),
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
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(
                    top: 149,
                    left: 309,
                  ),
                  child: TextButton(
                    child: Icon(
                      Icons.remove_shopping_cart_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 0.4)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      )),
                    ),
                    onPressed: () {},
                  )),



              SizedBox(height: 20),
              Visibility(
                visible: _isPopupVisible,
                child: Container(
                  margin: EdgeInsets.only(left: 100,top: 150),
                  width: 200,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 60.0,
                        spreadRadius: 60.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color:  Color.fromRGBO(96, 96, 96, 0.7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'ADD PRICE',
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'ADD TIME',
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _isPopupVisible = false;
                              });
                            },
                            child: Text('Cancel',
                              style: TextStyle(color: Colors.white),),

                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Perform your desired action here
                              setState(() {
                                _isPopupVisible = false;
                              });
                            },
                            child: Text('Submit',
                              style: TextStyle(color: Colors.white),),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.amber),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      )

      ),
    );
  }
}





