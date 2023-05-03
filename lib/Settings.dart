import 'package:flutter/material.dart';

class Settings extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //background color
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
                    icon: const Icon(Icons.arrow_back_ios_new),
                    onPressed: () {},
                    iconSize: 32,
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 60, left:15)
                ),
                Expanded(child:
                Center(
                  child:  Container(
                    margin: const EdgeInsets.only(top: 60),
                    child:Stack(
                      children: [
                        Padding(padding:EdgeInsets.only(right: 150,top: 6),
                     child:Image.asset(
                      'assets/images/logo white.png',
                      height: 37,
                       width: 37,
                    ),),
                        Padding(padding: EdgeInsets.only(left: 40.5,top: 4),
                       child: Text('SETTINGS',
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Hind',
                          color: Colors.white,
                        ),
                        ),),
                        Padding(padding: EdgeInsets.only(left: 214,top: 26),
                       child: Icon(Icons.settings_outlined,size: 14,color: Colors.white,),),
                    ],
                ),
                  ),
                ),
                ),
              ],
            ),

            Align(
              alignment: Alignment.centerLeft,
              child:Stack(
              children: [
                Padding(padding: EdgeInsets.only(left: 20,top: 25) ,
                child:Text('USER PREFERENCES',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hind',
                    color: Colors.white,
                  ),
                ),),

                Padding(padding: EdgeInsets.only(left: 188,top: 18),
                  child: Icon(Icons.auto_awesome_sharp,size: 18,color: Colors.white,),),
              ],
            ),
            ),

            SizedBox(height: 7,),

            Container(
              width: 360,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  Padding(padding: EdgeInsets.only(left: 23,top: 26),
                    child: Positioned(
                        child: Text('TAKE',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),),

                  Padding(padding: EdgeInsets.only(left: 23,top: 43),
                    child: Container(
                        child: Text('ACTION',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),
                  /*Padding(padding: EdgeInsets.only(left: 87,top: 40),
                    child: Container(
                        child:  Icon(Icons.,size: 21,color: Colors.white,)
                    ),
                  ),*/

                  Padding(padding: EdgeInsets.only(left: 23,top: 59),
                    child: Container(
                        child: Text('ON',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 23,top: 75),
                    child: Container(
                        child: Text('ACCOUNT',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 105,top: 76),
                    child: Container(
                        child:  Icon(Icons.person_pin,size: 20,color: Colors.white,)
                    ),
                  ),

                  Padding(padding:EdgeInsets.only(left: 9) ,
                    child: VerticalDivider(
                      width: 20,
                      indent: 30,
                      endIndent: 29,
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),

                  Container(
                      height: 44.81,
                      width: 67.42,
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
                      margin: const EdgeInsets.only(top: 40,left: 280,),
                      child: TextButton(
                        child: Icon(Icons.arrow_forward_ios_outlined,size: 30,),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 255, 255, 0.4)),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(21),
                                  topLeft: Radius.circular(21)),
                            ),
                          ),
                        ),
                        onPressed: () {
                        },
                      )
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child:Stack(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20,top: 13) ,
                    child:Text('MANAGE ACCOUNT',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    ),),

                  Padding(padding: EdgeInsets.only(left: 183,top: 14),
                    child: Icon(Icons.manage_accounts_outlined,size: 21,color: Colors.white,),),
                ],
              ),
            ),

            SizedBox(height: 3,),

            Container(
              width: 360,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  Padding(padding: EdgeInsets.only(left: 28,top: 21),
                    child: Positioned(
                        child: Text('TAKE',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),),

                  Padding(padding: EdgeInsets.only(left: 28,top: 38),
                    child: Container(
                        child: Text('ACTION',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),
                  /*Padding(padding: EdgeInsets.only(left: 87,top: 40),
                    child: Container(
                        child:  Icon(Icons.,size: 21,color: Colors.white,)
                    ),
                  ),*/

                  Padding(padding: EdgeInsets.only(left: 28,top: 54),
                    child: Container(
                        child: Text('ON',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 28,top: 69),
                    child: Container(
                        child: Text('ACCOUNT',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 110,top: 70),
                    child: Container(
                        child:  Icon(Icons.person_pin,size: 20,color: Colors.white,)
                    ),
                  ),

                  Padding(padding:EdgeInsets.only(left: 15) ,
                    child: VerticalDivider(
                      width: 20,
                      indent: 25,
                      endIndent: 25,
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),

                  Container(
                      height: 42,
                      width: 180,
                      margin: const EdgeInsets.only(top: 8,left: 170,),
                      child: TextButton(
                        child:Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('LOGOUT',
                              style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Hind',
                              color: Colors.black,
                            ),),
                            Icon(Icons.logout_sharp,size: 17,color: Colors.black,)
                          ],
                        ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(217, 217, 217, 1)),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                          ),
                        ),
                        onPressed: () {
                        },
                      )
                  ),

                  Container(
                      height: 42,
                      width: 180,
                      margin: const EdgeInsets.only(top: 59,left: 170,),
                      child: TextButton(
                        child:Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('DELETE ACCOUNT',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Hind',
                                  color: Colors.black,
                                ),),
                              Icon(Icons.person_off_outlined,size: 17,color: Colors.black,)
                            ],
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(217, 217, 217, 1)),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                        ),
                        onPressed: () {
                        },
                      )
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child:Stack(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20,top: 13) ,
                    child:Text('PRIVACY',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    ),),

                  Padding(padding: EdgeInsets.only(left: 95,top: 14),
                    child: Icon(Icons.privacy_tip_outlined,size: 18,color: Colors.white,),),
                ],
              ),
            ),

            SizedBox(height: 3,),

            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  Padding(padding: EdgeInsets.only(left: 28,top: 16),
                    child: Positioned(
                        child: Text('TAKE',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),),

                  Padding(padding: EdgeInsets.only(left: 28,top: 32),
                    child: Container(
                        child: Text('CONTROL',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),
                  /*Padding(padding: EdgeInsets.only(left: 87,top: 40),
                    child: Container(
                        child:  Icon(Icons.,size: 21,color: Colors.white,)
                    ),
                  ),*/

                  Padding(padding: EdgeInsets.only(left: 28,top: 48),
                    child: Container(
                        child: Text('OF',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 28,top: 64),
                    child: Container(
                        child: Text('SECURITY',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 110,top: 66),
                    child: Container(
                        child:  Icon(Icons.lock_outline_sharp,size: 17,color: Colors.white,)
                    ),
                  ),

                  Padding(padding:EdgeInsets.only(left: 15) ,
                    child: VerticalDivider(
                      width: 20,
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),


                  Container(
                      height: 80,
                      width: 180,
                      margin: const EdgeInsets.only(top: 10,left: 170,),
                      child: TextButton(
                        child:Center(
                             child:  Text('CHANGE PASSWORD',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Hind',
                                  color: Colors.black,
                                ),),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(217, 217, 217, 1)),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                        ),
                        onPressed: () {
                        },
                      )
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child:Stack(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20,top: 13) ,
                    child:Text('LANGUAGE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    ),),

                  Padding(padding: EdgeInsets.only(left: 113,top: 14.5),
                    child: Icon(Icons.language_outlined,size: 18,color: Colors.white,),),
                ],
              ),
            ),

            SizedBox(height: 3,),

            Container(
              width: 360,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  Padding(padding: EdgeInsets.only(left: 28,top: 13),
                    child: Positioned(
                        child: Text('CHANGE',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),),

                  Padding(padding: EdgeInsets.only(left: 28,top: 30),
                    child: Container(
                        child: Text('YOUR',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 28,top: 46),
                    child: Container(
                        child: Text('LANGUAGE',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),



                  Padding(padding:EdgeInsets.only(left: 15) ,
                    child: VerticalDivider(
                      width: 20,
                      indent: 17,
                      endIndent: 17,
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),


                  Container(
                      height: 60,
                      width: 180,
                      margin: const EdgeInsets.only(top: 10,left: 170,),
                      child: TextButton(
                        child:Center(
                          child:  Text('CHANGE PASSWORD',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Hind',
                              color: Colors.black,
                            ),),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(217, 217, 217, 1)),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                        ),
                        onPressed: () {
                        },
                      )
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child:Stack(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20,top: 13) ,
                    child:Text('SUPPORT',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind',
                        color: Colors.white,
                      ),
                    ),),

                  Padding(padding: EdgeInsets.only(left: 100,top: 14),
                    child: Icon(Icons.headset_mic_outlined,size: 18,color: Colors.white,),),
                ],
              ),
            ),

            SizedBox(height: 3,),

            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(0, 0, 0, 0.33).withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  Padding(padding: EdgeInsets.only(left: 28,top: 15),
                    child: Positioned(
                        child: Text('24/7',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),),

                  Padding(padding: EdgeInsets.only(left: 28,top: 31),
                    child: Container(
                        child: Text('HRS',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),
                  /*Padding(padding: EdgeInsets.only(left: 87,top: 40),
                    child: Container(
                        child:  Icon(Icons.,size: 21,color: Colors.white,)
                    ),
                  ),*/

                  Padding(padding: EdgeInsets.only(left: 28,top: 47),
                    child: Container(
                        child: Text('CUSTOMER',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 28,top: 63),
                    child: Container(
                        child: Text('SERVICE',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Hind',
                            color: Colors.white,
                          ),)
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 100,top: 66),
                    child: Container(
                        child:  Icon(Icons.lock_outline_sharp,size: 17,color: Colors.white,)
                    ),
                  ),

                  Padding(padding:EdgeInsets.only(left: 15) ,
                    child: VerticalDivider(
                      width: 20,
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),


                  Container(
                      height: 80,
                      width: 180,
                      margin: const EdgeInsets.only(top: 10,left: 170,),
                      child: TextButton(
                        child:Center(
                          child:  Text('CONACT US',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Hind',
                              color: Colors.black,
                            ),),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(217, 217, 217, 1)),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                        ),
                        onPressed: () {
                        },
                      )
                  ),
                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}
