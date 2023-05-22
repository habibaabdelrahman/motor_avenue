import 'package:flutter/material.dart';
class liveAcution3 extends StatelessWidget {
  const liveAcution3({Key? key}) : super(key: key);

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
                                padding: EdgeInsets.only(top: 35, ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.sensors_off,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      ' OFFLINE',
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
              width: 350,
              height: 230,
              margin: const EdgeInsets.only(top: 170, left: 20,right: 20),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                  Text(
                    ' CONGRATS ON YOUR FRIST',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Iceland'),
                  ),
                  Text(
                    ' CAR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Iceland'),
                  ),
                  Text(
                    ' PURCHASE THE PAPER ARE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Iceland'),
                  ),
                  Text(
                    ' BEING',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Iceland'),
                  ),
                  Text(
                    ' PREPARED',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Iceland'),
                  ),
                ],



              ),
            ),
          SizedBox(height: 200,),
          ElevatedButton(
            child: const Padding(padding: EdgeInsets.only(top: 15,bottom: 15,left: 10,right: 10),child:Text(
              'NOTFIY ME WHEN IT IS READY',
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Iceland'),
            ),
          ),
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.amber),
              foregroundColor:
              MaterialStateProperty.all<Color>(Colors.black),
              shape:
              MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            onPressed: () {},
          ),
          ],
        ),


      ),



    );
  }
}
