import 'package:flutter/material.dart';

class CustomHorizontalStepper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
          Container(
            margin: EdgeInsets.only(top: 50,left: 10,right: 10),
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
            radius: 20,
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