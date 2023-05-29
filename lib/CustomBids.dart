import 'package:flutter/material.dart';

class CustomBids extends StatefulWidget {
  @override
  _CustomBidsState createState() => _CustomBidsState();
}

class _CustomBidsState extends State<CustomBids> {
  TextEditingController _textEditingController = TextEditingController();

  void _updateText(String value) {
    setState(() {
      _textEditingController.text += value;
    });
  }

  void _clearText() {
    setState(() {
      _textEditingController.text = '';
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        iconSize: 30,
                        color: Colors.black,
                        padding: const EdgeInsets.only(top: 30, left: 20)),
                    Expanded(
                      child: Center(
                        child: Container(
                            margin: const EdgeInsets.only(top: 70, left: 85),
                            child: Stack(
                              children: [
                                Text(
                                  'AUCTION',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Hind'),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 25, left: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.sensors_sharp,
                                          size: 48,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          ' LIVE',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Hind'),
                                        ),
                                      ],
                                    )),
                              ],
                            )),
                      ),
                    ),
                    IconButton(
                        icon: const Icon(
                          Icons.bookmark_outline_sharp,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        iconSize: 30,
                        color: Colors.black,
                        padding: const EdgeInsets.only(top: 30, right: 20)),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(left: 25, right: 25, top: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromRGBO(11, 11, 11, 0.35).withOpacity(0.2),
                        const Color.fromRGBO(11, 11, 11, 0.35).withOpacity(0.2),
                        const Color.fromRGBO(11, 11, 11, 0).withOpacity(0.2),
                      ],
                      begin: FractionalOffset.bottomCenter,
                      end: FractionalOffset.topCenter,
                    ),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(padding:EdgeInsets.only(top: 10,left: 10),
                          child:Text(
                            'PLACE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Hind'),
                          ),),
                          Padding(
                            padding: EdgeInsets.only(top: 30,left: 10),
                            child: Row(
                              children: [
                                Text(
                                  'CUSTOM',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Hind'),
                                ),

                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 51,left: 5),
                              child: Stack(
                                children: [
                                  Text(
                                    ' BIDS',
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Hind',
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                      EdgeInsets.only(left: 60, top: 9),
                                      child: Icon(
                                        Icons.monetization_on,
                                        size: 15,
                                        color: Colors.amber,
                                      )),
                                ],
                              )),
                        ],
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 335.0,
                              padding: EdgeInsets.all(16.0),
                              child: TextField(
                                controller: _textEditingController,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  fillColor: Color.fromRGBO(255, 255, 255, 1).withOpacity(0.4),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  labelText: 'Enter a number',
                                ),
                                
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      _buildNumberButton('1'),
                                      SizedBox(width: 15,),
                                      _buildNumberButton('2'),
                                      SizedBox(width: 15,),
                                      _buildNumberButton('3'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      _buildNumberButton('4'),
                                      SizedBox(width: 15,),
                                      _buildNumberButton('5'),
                                      SizedBox(width: 15,),
                                      _buildNumberButton('6'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      _buildNumberButton('7'),
                                      SizedBox(width: 15,),
                                      _buildNumberButton('8'),
                                      SizedBox(width: 15,),
                                      _buildNumberButton('9'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      _buildNumberButton('0'),
                                      SizedBox(width: 15,),
                                      _buildClearButton(),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                      height: 70,
                                      width: 155,
                                      child: TextButton(
                                        child: Column(
                                          children: [
                                            Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 6),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'APPLY',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.w700,
                                                            fontFamily: 'Hind'),
                                                      ),

                                                      Padding(padding: EdgeInsets.only(left: 60,top: 10),
                                                          child: Icon(
                                                            Icons.add,
                                                            size: 30,
                                                            color: Colors.white,
                                                          )
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                    padding:
                                                    EdgeInsets.only(left: 42,top: 13 ),
                                                    child: Icon(
                                                      Icons.monetization_on,
                                                      size: 11,
                                                      color: Colors.amber,
                                                    )),
                                                Padding(
                                                    padding: EdgeInsets.only(top: 22),
                                                    child: Stack(
                                                      children: [
                                                        Text(
                                                          ' BID',
                                                          style: TextStyle(
                                                            color: Colors.amber,
                                                            fontSize: 24,
                                                            fontWeight: FontWeight.w700,
                                                            fontFamily: 'Hind',
                                                          ),
                                                        ),

                                                      ],
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(
                                              Color.fromRGBO(0, 0, 0, 0.76)),
                                          foregroundColor:
                                          MaterialStateProperty.all<Color>(Colors.white),
                                          shape:
                                          MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15))),
                                        ),
                                        onPressed: () {},
                                      )),
                                  SizedBox(height: 10,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),


                SizedBox(height: 28,),
              ],
            ),
          ),
        )
    );
  }

  Widget _buildNumberButton(String value) {
    return Container(
      width: 75.0,
      height: 75.0,
      margin: EdgeInsets.only(bottom: 15),
      child: MaterialButton(
        onPressed: () {
          _updateText(value);
        },
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),
        ),
        child: Text(
          value,
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }

  Widget _buildClearButton() {
    return Container(
      width: 75.0,
      height: 75.0,
      margin: EdgeInsets.only(bottom: 15),
      child: MaterialButton(
        onPressed: () {
          _clearText();
        },
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),
        ),
        child: Icon(
          Icons.backspace,
          size: 24.0,
        ),
      ),
    );
  }
}
