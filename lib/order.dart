import 'package:flutter/material.dart';
import 'package:motor_avenue/contactus.dart';



class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  int currentStep = 0;

  void goToNextStep() {
    setState(() {
      currentStep = currentStep += 1;
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
                      onPressed: () {},
                      iconSize: 32,
                      color: Colors.white,
                      padding: const EdgeInsets.only(top: 45, left: 15)),
                  Expanded(
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 250,
                                top: 6,
                                left: 65,
                              ),
                              child: Image.asset(
                                'assets/images/logo white.png',
                                height: 37,
                                width: 37,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 100, top: 5),
                              child: Text(
                                'ORDERS',
                                style: TextStyle(
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Hind',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 226, top: 22),
                              child: Icon(
                                Icons.sticky_note_2_outlined,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 30,left: 10,right: 10),
                height: 140,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.grey,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _Step(
                      icon: Icons.check,
                      title: 'STEP 1',
                      subtitle: Container(
                        child: Stack(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 3),
                              child: Text('ORDER',
                                style: TextStyle(fontSize:12,
                                    color: Colors.black,
                                    fontWeight:FontWeight.w500 ,
                                    fontFamily: 'Hind'),),),
                            Padding(padding: EdgeInsets.only(top: 12),
                              child: Text('PLACED',
                                style: TextStyle(fontSize:12,
                                    color: Colors.black,
                                    fontWeight:FontWeight.w500 ,
                                    fontFamily: 'Hind'),),),
                          ],
                        ),
                      ),
                    ),

                    Padding(padding:EdgeInsets.only(bottom: 55) ,
                      child:  Container(
                        height: 3,
                        width: 45,
                        child:Divider(
                          indent: 5,
                          endIndent: 0,
                          thickness: 3,
                          color: Colors.white,
                        ),
                      ),),

                    _Step(
                      icon: Icons.wallet_giftcard_outlined,
                      title: 'STEP 2',
                      subtitle: Container(
                        child: Stack(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 11,),
                              child: Text('ORDER',
                                style: TextStyle(fontSize:12,
                                    color: Colors.black,
                                    fontWeight:FontWeight.w500 ,
                                    fontFamily: 'Hind'),),),
                            Padding(padding: EdgeInsets.only(top: 12),
                              child: Text('CONFIRMED',
                                style: TextStyle(fontSize:11,
                                    color: Colors.black,
                                    fontWeight:FontWeight.w500 ,
                                    fontFamily: 'Hind'),),)
                          ],
                        ),
                      ),

                    ),
                    Padding(padding:EdgeInsets.only(bottom: 55) ,
                      child:  Container(
                        height: 3,
                        width: 45,
                        child:Divider(
                          indent: 0,
                          endIndent: 5,
                          thickness: 3,
                          color: Colors.white,
                        ),
                      ),),
                    _Step(
                      icon: Icons.local_shipping_outlined,
                      title: 'STEP 3',
                      subtitle: Container(
                        child: Stack(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 5),
                              child: Text('ORDER',
                                style: TextStyle(fontSize:12,
                                    color: Colors.black,
                                    fontWeight:FontWeight.w500 ,
                                    fontFamily: 'Hind'),),),
                            Padding(padding: EdgeInsets.only(top: 12),
                              child: Text('SHIPPED',
                                style: TextStyle(fontSize:12,
                                    color: Colors.black,
                                    fontWeight:FontWeight.w500 ,
                                    fontFamily: 'Hind'),),)
                          ],
                        ),
                      ),

                    ),
                    Padding(padding:EdgeInsets.only(bottom: 55) ,
                      child:  Container(
                        height: 3,
                        width: 45,
                        child:Divider(
                          indent: 5,
                          endIndent: 0,
                          thickness: 3,
                          color: Colors.white,
                        ),
                      ),),
                    _Step(
                      icon: Icons.location_on_outlined,
                      title: 'Step 4',
                      subtitle: Container(
                        child: Stack(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 12),
                              child: Text('ORDER',
                                style: TextStyle(fontSize:12,
                                    color: Colors.black,
                                    fontWeight:FontWeight.w500 ,
                                    fontFamily: 'Hind'),),),
                            Padding(padding: EdgeInsets.only(top: 12),
                              child: Text('DELIVERED',
                                style: TextStyle(fontSize:12,
                                    color: Colors.black,
                                    fontWeight:FontWeight.w500 ,
                                    fontFamily: 'Hind'),),)
                          ],
                        ),
                      ),

                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    width: 370,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey,
                    ),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.add_card,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 185,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                        ),
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1),
                            child: Text(
                              'YOUR',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 14),
                            child: Text(
                              'LOCATON',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 105, top: 5),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    width: 370,
                    height: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey,
                    ),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.add_card,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 185,
                    height: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                        ),
                        child: Icon(
                          Icons.sticky_note_2_outlined,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1),
                            child: Text(
                              'YOUR',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 13),
                            child: Text(
                              'ORDER',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:25),
                            child: Text(
                              'DETAILS',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Hind',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 105, top: 2),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    width: 370,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey,
                    ),
                    child: Container(
                      alignment: Alignment.centerRight,

                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.credit_card,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 185,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                        ),
                        child: Icon(
                          Icons.attach_money,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1),
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
                            padding: EdgeInsets.only(top: 14),
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
                          Padding(
                            padding: EdgeInsets.only(left: 105, top: 2),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 180),
                  child: Text(
                    'FOR ANY FURTHER HELP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hind'),
                  ),),
                  Padding(padding: EdgeInsets.only(top: 250,bottom: 30),
                      child: TextButton(
                        child: const Text(
                          'Contact Us',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              fontFamily: 'Hind'),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => contactus(),
                              ));
                        },
                      ))],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class _Step extends StatelessWidget {
  final IconData icon;
  final String title;
  final Container subtitle;


  const _Step({required this.icon, required this.title, required this.subtitle, });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 20),
          child:CircleAvatar(
            radius: 23,
            backgroundColor: Colors.amber,
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(217, 217, 217, 1),
              foregroundColor: Colors.black,
              child: Icon(
                icon,
                size: 20,
              ),
              radius: 19,
            ),
          ),),

        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 11,
              ),
            ),

            Container(
              child:
              subtitle,
            ),
          ],
        ),



      ],
    );
  }
}