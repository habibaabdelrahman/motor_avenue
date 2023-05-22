import 'package:flutter/material.dart';
class liveAcution2 extends StatelessWidget {
  const liveAcution2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(


        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
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

              margin: const EdgeInsets.only(top: 50, left: 20,right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 15,),
                    Text(
                      'HIGHEST BID',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Hind'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Icon(
                          Icons.attach_money,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          '432,300',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Hind'),
                        ),

                      ],

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 10),
                      width: 310,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 255, 255, 0.08)
                            .withOpacity(0.2),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.black,
                                child: const CircleAvatar(
                                  backgroundColor:
                                  Color.fromRGBO(217, 217, 217, 1),
                                  foregroundColor: Colors.black,
                                  child: Icon(
                                    Icons.person_outline,
                                    size: 24,
                                  ),
                                  radius: 17,
                                )),
                            SizedBox(width: 5,),
                            Stack(
                              children: [
                                Text(
                                  'BIDDER ID',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 19,
                                      fontFamily: 'Hind'),
                                ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 18,
                                      ),
                                      child: Text(
                                        '374957*',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w800,
                                            fontFamily: 'Hind'),
                                      ),
                                    ),

                              ],
                            ),

                            SizedBox(width: 10,),
                            VerticalDivider(
                              width: 20,
                              indent: 15,
                              endIndent: 15,
                              thickness: 2,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10,),
                            Row(
                              children: [

                                Text(
                                  'BID',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Hind'),
                                ),

                                Stack(
                                    children:[
                                      Icon(
                                        Icons.attach_money_outlined,
                                        size: 28,
                                        color: Colors.white,
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 23,top: 1),
                                        child: Text(
                                          '10K',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Hind'),
                                        ),
                                      ),
                                    ]
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

SizedBox(height: 5,),
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 10),
                      width: 310,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 255, 255, 0.08)
                            .withOpacity(0.2),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.black,
                                child: const CircleAvatar(
                                  backgroundColor:
                                  Color.fromRGBO(217, 217, 217, 1),
                                  foregroundColor: Colors.black,
                                  child: Icon(
                                    Icons.person_outline,
                                    size: 24,
                                  ),
                                  radius: 17,
                                )),
                            SizedBox(width: 5,),
                            Stack(
                              children: [
                                Text(
                                  'BIDDER ID',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 19,
                                      fontFamily: 'Hind'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 18,
                                  ),
                                  child: Text(
                                    '773607*',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: 'Hind'),
                                  ),
                                ),

                              ],
                            ),

                            SizedBox(width: 8,),
                            VerticalDivider(
                              width: 20,
                              indent: 15,
                              endIndent: 15,
                              thickness: 2,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8,),
                            Row(
                              children: [

                                Text(
                                  'BID',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Hind'),
                                ),

                                Stack(
                                    children:[
                                      Icon(
                                        Icons.attach_money_outlined,
                                        size: 28,
                                        color: Colors.white,
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 23,top: 1),
                                        child: Text(
                                          '12.3K',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Hind'),
                                        ),
                                      ),
                                    ]
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 10),
                      width: 310,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 255, 255, 0.08)
                            .withOpacity(0.2),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.black,
                                child: const CircleAvatar(
                                  backgroundColor:
                                  Color.fromRGBO(217, 217, 217, 1),
                                  foregroundColor: Colors.black,
                                  child: Icon(
                                    Icons.person_outline,
                                    size: 24,
                                  ),
                                  radius: 17,
                                )),
                            SizedBox(width: 5,),
                            Stack(
                              children: [
                                Text(
                                  'BIDDER ID',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 19,
                                      fontFamily: 'Hind'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 18,
                                  ),
                                  child: Text(
                                    '835704*',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: 'Hind'),
                                  ),
                                ),

                              ],
                            ),

                            SizedBox(width: 10,),
                            VerticalDivider(
                              width: 20,
                              indent: 15,
                              endIndent: 15,
                              thickness: 2,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10,),
                            Row(
                              children: [

                                Text(
                                  'BID',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Hind'),
                                ),

                                Stack(
                                    children:[
                                      Icon(
                                        Icons.attach_money_outlined,
                                        size: 28,
                                        color: Colors.white,
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 23,top: 1),
                                        child: Text(
                                          '10K',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Hind'),
                                        ),
                                      ),
                                    ]
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                   Padding(padding:EdgeInsets.only(left: 15,top: 10,bottom: 10),
                   child:Align(
                     alignment: Alignment.centerLeft,
                     child:IconButton(
                         icon: const Icon(
                           Icons.arrow_back_ios,
                           color: Colors.white,
                         ),
                         onPressed: () {},
                         iconSize: 28,
                         color: Colors.black,
                         ),

                   ),
              ),
                  ],
                ),

              ),

            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 80,
                    width: 155,
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
                    margin: const EdgeInsets.only(top: 10, right: 20),
                    child: TextButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'TIME LEFT',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Hind'),
                          ),
                          Text(
                            '23:20:00',
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Hind'),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 255, 255, 0.08)),
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      onPressed: () {},
                    )),
                Container(
                    height: 80,
                    width: 155,
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
                      top: 10,
                    ),
                    child: TextButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Text(
                                'PLACE',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Hind'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Row(
                                  children: [
                                    Text(
                                      'CUSTOM',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Hind'),
                                    ),
                                    SizedBox(width: 10,),
                                    Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 37),
                                  child: Stack(
                                    children: [
                                      Text(
                                        ' BIDS',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Hind', ),
                                      ),
                                      Padding(
                                          padding:
                                          EdgeInsets.only(left: 55, top: 9),
                                          child: Icon(
                                            Icons.monetization_on,
                                            size: 14,
                                            color: Colors.amber,
                                          )),
                                    ],
                                  )),
                            ],
                          )
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 255, 255, 0.4)),
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      onPressed: () {},
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 75,
                    width: 170,
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
                      top: 10,
                    ),
                    child: TextButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text(
                                    'BID',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Hind'),
                                  ),

                                  Stack(
                                      children:[
                                        Icon(
                                          Icons.attach_money_outlined,
                                          size: 33,
                                          color: Colors.black,
                                        ),
                                        Padding(padding: EdgeInsets.only(left: 23,top: 1),
                                          child: Text(
                                            '1K',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 27,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Hind'),
                                          ),
                                        ),
                                      ]
                                  ),
                                  SizedBox(width: 5,),
                                  Icon(
                                    Icons.add,
                                    size: 33,
                                    color: Colors.black,
                                  )
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 203, 20, 1)),
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      onPressed: () {},
                    )),
                SizedBox(width: 15,),
                Container(
                    height: 75,
                    width: 170,
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
                      top: 10,
                    ),
                    child: TextButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Text(
                                    'BID',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Hind'),
                                  ),

                                  Stack(
                                      children:[
                                        Icon(
                                          Icons.attach_money_outlined,
                                          size: 33,
                                          color: Colors.black,
                                        ),
                                        Padding(padding: EdgeInsets.only(left: 23,top: 1),
                                          child: Text(
                                            '10K',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 27,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Hind'),
                                          ),
                                        ),
                                      ]
                                  ),

                                  Icon(
                                    Icons.add,
                                    size: 33,
                                    color: Colors.black,
                                  )
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 203, 20, 1)),
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      onPressed: () {},
                    )),
              ],
            )
          ],
        ),

      ),




    );
  }
}
