import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';



class register extends StatelessWidget {
  const register ({Key? key}) : super(key: key);

  get nameController => null;
  get passwordController => null;

  //bool firstvalue=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
          padding: const EdgeInsets.all(5.0),
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Container(
                  margin: EdgeInsets.only(top: 38),
                  child: Image.asset(
                    'assets/images/logo white.png',
                    width: 86.5,
                  ),
                ),
                Text(
                  'REGISTER',
                  style: TextStyle(
                      fontSize: 27.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MontserratSubrayada'
                  ),
                ),
                const SizedBox(height:20.0,),
                WidgetAnimator(
                  incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                    duration: Duration(seconds: 3),),
                  child:

                  Container(
                    margin: const EdgeInsets.only(top: 5,bottom: 5,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromRGBO(234, 234, 234, 0.11).withOpacity(0.2),
                          const Color.fromRGBO(0, 0, 0, 0.17).withOpacity(0.2),
                          const Color.fromRGBO(47, 47, 47, 0.17).withOpacity(0.2),
                        ],
                        begin: FractionalOffset.bottomCenter,
                        end: FractionalOffset.topCenter,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 20,top: 50),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            //padding: const EdgeInsets.only(top: 2),
                            width: 320,
                            height: 60,
                            margin: const EdgeInsets.only(top: 10 ),
                            child: TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),

                                labelText: 'FRIST NAME',
                                labelStyle: TextStyle(color: Colors.white,
                                    fontSize: 20,fontWeight: FontWeight.bold ),
                                filled: true,
                                fillColor: Colors.grey,

                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Container(
                            //padding: const EdgeInsets.only(top: 2),
                            width: 320,
                            height: 60,
                            margin: const EdgeInsets.only(top: 0 ),
                            child: TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),

                                labelText: 'LAST NAME',
                                labelStyle: TextStyle(color: Colors.white,
                                    fontSize: 20,fontWeight: FontWeight.bold ),
                                filled: true,
                                fillColor: Colors.grey,

                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Container(
                            //padding: const EdgeInsets.only(top: 2),
                            width: 320,
                            height: 60,
                            margin: const EdgeInsets.only(top: 0 ),
                            child: TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                prefixIcon: Icon(Icons.email,color: Colors.white,),
                                labelText: 'E-Mail',
                                labelStyle: TextStyle(color: Colors.white,
                                    fontSize: 20,fontWeight: FontWeight.bold ),
                                filled: true,
                                fillColor: Colors.grey,

                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Container(
                            width: 320,
                            height: 60,
                            margin: const EdgeInsets.only(top: 15),
                            child: TextField(
                              obscureText: true,
                              controller: passwordController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                labelText: 'PASSWORD',
                                labelStyle: TextStyle(color: Colors.white,
                                    fontSize: 20 , fontWeight: FontWeight.bold),
                                prefixIcon: Icon(Icons.key,color: Colors.white,),
                                filled: true,
                                fillColor: Colors.grey,

                              ),
                            ),
                          ),

                          /*: (bool value1){
                                  setState((){ Row(
                              children: <Widget> [
                                Text("I'M NOT A ROBOT"),
                                Checkbox(value: firstvalue,
                                    checkColor: Colors.white,
                                    activeColor: Colors.amber,
                                    onChanged
                                    firstvalue = value1;
                                  });
                                    },)
                              ],
                            )*/

                          Row(
                            children:[
                              Container(
                                  height: 43,
                                  width: 148,
                                  margin: const EdgeInsets.only(top: 20,left: 20),
                                  child: ElevatedButton(
                                    child: const Text('MALE',
                                      style:   TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'MontserratSubrayada'
                                      ),
                                    ),

                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(21.5)
                                          )
                                      ),
                                    ),
                                    onPressed: () {
                                      print(nameController.text);
                                      print(passwordController.text);
                                    },
                                  )
                              ),

                              Container(
                                  height: 43,
                                  width: 148,
                                  margin: const EdgeInsets.only(top: 20, left: 50),
                                  child: ElevatedButton(
                                    child: const Text('FEMALE',
                                      style:   TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'MontserratSubrayada'
                                      ),
                                    ),

                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(21.5)
                                          )
                                      ),
                                    ),
                                    onPressed: () {
                                      print(nameController.text);
                                      print(passwordController.text);
                                    },
                                  )
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                    onChanged: (bool? value) {},
                                    activeColor: Colors.blue,
                                    checkColor: Colors.white,
                                  ),
                                  Text('I HAVE READ AND ACCEPT THE',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,


                                    ),),
                                  Text('PRIVACY POLICY',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:FontWeight.bold,
                                      color: Colors.yellow,

                                    ),

                                  ),
                                ],
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                    onChanged: (bool? value) {},
                                    activeColor: Colors.blue,
                                    checkColor: Colors.white,
                                  ),
                                  Text('BY CLICKING YOUR EMAIL WILL BE UPDATED',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,


                                    ),),

                                ],
                              ),
                              Container(
                                  height: 43,
                                  width: 148,
                                  margin: const EdgeInsets.only(top: 20,left: 20),
                                  child: ElevatedButton(
                                    child: const Text('REGISTER',
                                      style:   TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'MontserratSubrayada'
                                      ),
                                    ),

                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(21.5)
                                          )
                                      ),
                                    ),
                                    onPressed: () {
                                      print(nameController.text);
                                      print(passwordController.text);
                                    },
                                  )
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),


                ),
              ],
            ),
          ),
        )
    );
  }
}
