import 'package:flutter/material.dart';
import 'package:motor_avenue/LiveAuction.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(0, 0, 0, 1),
              Color.fromRGBO(208, 196, 153, 0.7058823529411765),
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
              icon: const Icon(Icons.notes_sharp),
              onPressed: () {},
              iconSize: 40,
                color: Colors.white,
              padding: const EdgeInsets.only(top: 40, left: 15)
            ),

            Expanded(child:
         Center(
          child:  Container(
          margin: const EdgeInsets.only(top: 55),
          child: Image.asset(
            'assets/images/logo white.png',
            width: 66,
          ),
        ),
         ),
            ),

            IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
                iconSize: 40,
                color: Colors.white,
                padding: const EdgeInsets.only(top: 40,right: 15)
            ),
        ],
      ),
                const SizedBox(width: 30),


            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/logo white.png',
                    width: 33,
                  ),
                ),

                Stack(
                  children: <Widget>[
                    const Positioned(
                      top: 0,
                      child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'DISCOVER', textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Hind'
                    ),
                  ),
                ),
                    ),
                Container(
                  margin: const EdgeInsets.only(top: 30,),
                  child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "WHAT'S NEW ?", textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Hind'
                    ),
                  ),
                ),
                ),
                    Container(
                      margin: const EdgeInsets.only(top: 61),
                      child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "FASTER...", textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind'
                        ),
                      ),
                    ),
                    ),
        ],
      ),
      ],
        ),
            ),
            ),



                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(padding: const EdgeInsets.only(left: 15,top: 95,)),

                    //************************ The Shop Button *************************

                    TextButton(
                      onPressed: () {},
                      child:SizedBox(
                        height: 30,
                      width: 91,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.store_mall_directory_outlined,size: 33,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children:[
                            const Padding(padding: const EdgeInsets.only(top: 2),
                        child:Align(
                          alignment: Alignment.topLeft,
                        child: const Text('THE',textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Hind'
                      ),),
                        ),
                            ),
                        Container(
                          margin: const EdgeInsets.only(top:11),
                        child: const Text('SHOP',textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Hind'
                          ),),
                        ),
                        ],
                        ),
                      ],),
                      ],
                      ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(41, 41, 41, 0.37)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),


                    //************************ Live Auction Button *************************

                    Expanded(
                      child:Center(
                   child: TextButton(
                     onPressed: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => LiveAuction()),
                       );
                     },
                     child:SizedBox(
                       height: 30,
                       width: 91,
                       child: Row(
                         children: [
                           const Icon(Icons.av_timer,size: 31,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Stack(
                           children:[
                             const Padding(padding: const EdgeInsets.only(top: 2),
                               child: const Align(
                                 alignment: Alignment.topLeft,
                                 child: Text('LIVE',textAlign: TextAlign.left,
                                   style: TextStyle(
                                       fontSize: 11.50,
                                       fontWeight: FontWeight.bold,
                                       fontFamily: 'Hind'
                                   ),),
                               ),
                             ),
                               Container(
                             margin: const EdgeInsets.only(top: 12),
                               child: const Text('AUCTION',
                                 style: const TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                     fontFamily: 'Hind'
                                 ),),
                   ),
                             ],),
                       ],
                     ),
                         ],
                       ),
                     ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(41, 41, 41, 0.37)),
                       foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(14)
                         ),
                       ),
                     ),
                    ),
                        ),
                    ),

                    //************************ Create ADS Button *************************

                    TextButton(
                      onPressed: () {},
                      child:SizedBox(
                        height: 30,
                        width: 91,
                        child: Row(
                          children: [
                            const Icon(Icons.attach_file_outlined,size: 31,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(
                                  children:[
                                    const Padding(padding: const EdgeInsets.only(top: 2),
                                child:const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('CREATE',textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Hind'
                                    ),),
                                ),
                                    ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                child: const Text('ADS',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Hind'
                                  ),),
                                ),
                        ],
                    ),
                              ],),
                          ],
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(41, 41, 41, 0.37)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)
                          ),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15,top: 20,)),
                  ],
                ),

        //******************* Card 1 ******************************

        Container(
          width: 340,
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              gradient: LinearGradient(
                colors: [
                  const Color.fromRGBO(244, 244, 244, 0.08).withOpacity(0.1),
                  const Color.fromRGBO(0, 0, 0, 0.17).withOpacity(0.1),
                  const Color.fromRGBO(47, 47, 47, 0.17).withOpacity(0.3),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          child: Text('hi'),

        ),

                SizedBox(height: 25,),

                //------------------Card 2-----------------------------
                Container(
                  width: 340,
                  height: 165,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/img_group172.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(21),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromRGBO(244, 244, 244, 0.08).withOpacity(0.1),
                        const Color.fromRGBO(0, 0, 0, 0.17).withOpacity(0.1),
                        const Color.fromRGBO(47, 47, 47, 0.17).withOpacity(0.3),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left:86,
                        top: 70 ,
                        child:
                      Image.asset('assets/images/img_rectangle13.png',
                      width: 200,
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
                          margin: const EdgeInsets.only(top: 120,left: 280,),
                          child: TextButton(
                            child: Icon(Icons.arrow_forward_ios_outlined,size: 30,),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 255, 255, 0.4)),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(21),
                                          topLeft: Radius.circular(21)),
                                  )
                              ),
                            ),
                            onPressed: () {
                            },
                          )
                      ),
                    ],
                  ),
                ),



        //*********************************Saved And Menu And Cart*************************

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        Container(
            height: 70,
            width: 70,
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
            margin: const EdgeInsets.only(top: 30,left: 20,),
            child: TextButton(
              child: Icon(Icons.bookmark_outline_sharp,size: 33,),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 255, 255, 0.4)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21)
                    )
                ),
              ),
              onPressed: () {
              },
            )
        ),

              //************ Menu Bottom *******************************

              Expanded(child:
              Center(
              child: IconButton(onPressed: (){},
                    icon: Icon(Icons.grid_view_rounded,size: 40,color: Colors.black87,),
                padding: EdgeInsets.only(top: 20,),),
    ),),


                //************************ Cart Button ****************
                Container(
                    height: 70,
                    width: 70,
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
                    margin: const EdgeInsets.only(top: 30,right: 20),
                    child: TextButton(
                      child: Icon(Icons.shopping_cart_outlined,size: 30,),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 255, 255, 0.4)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21)
                            )
                        ),
                      ),
                      onPressed: () {
                      },
                    )
                ),
        ],
        ),
      ]
      ),
      ),

    );
  }
}
