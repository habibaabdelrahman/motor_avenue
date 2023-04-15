import 'package:flutter/material.dart';
import 'package:graduation_project/Home.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';



class login extends StatelessWidget {
  const login ({Key? key}) : super(key: key);

  get nameController => null;
  get passwordController => null;



  @override
  Widget build(BuildContext context) {
    bool _rememberMe = false;
    return Scaffold(
        body:
        Container(
          padding: const EdgeInsets.all(20.0),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 38),
                child: Image.asset(
                  'assets/images/logo white.png',
                  width: 86.5,
                ),
        ),
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 27.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MontserratSubrayada'
                  ),
                ),

                const SizedBox(height: 20.0,),
                WidgetAnimator(
                  incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                      duration: Duration(seconds: 3),),
               child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 87,bottom:40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
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
                        padding: const EdgeInsets.only(bottom: 20,top: 100),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
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
                          /*  TextButton(
                              onPressed: () {
                                //forgot password screen
                              },
                              child: const Text('Forgot Password',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 15,
                                fontFamily: 'MontserratSubrayada'),),
                            ),*/

                            SizedBox(height: 10,),

                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 30,)),
                                Checkbox(
                                  value: _rememberMe,
                                  fillColor: MaterialStateProperty.all<Color>(Colors.white),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                      color: Colors.white,
                                      width: 25,
                                    ),
                                  ),
                                  onChanged: (value) {
                                    // update the state of _rememberMe
                                    _rememberMe = value!;
                                  },
                                ),
                                Text('Remember Me',
                                  style:   TextStyle(
                                    color: Colors.white,
                                      fontSize: 17,
                                      fontFamily: 'MontserratSubrayada'
                                  ),
                                ),
                                // your other child widgets in the row
                              ],
                            ),


                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 30,)),
                                Checkbox(
                                  value: _rememberMe,
                                  fillColor: MaterialStateProperty.all<Color>(Colors.white),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                      color: Colors.white,
                                      width: 25,
                                    ),
                                  ),
                                  onChanged: (value) {
                                    // update the state of _rememberMe
                                    _rememberMe = value!;
                                  },
                                ),
                                Text('I’m not a robot',
                                  style:   TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontFamily: 'MontserratSubrayada'
                                  ),
                                ),
                                // your other child widgets in the row
                              ],
                            ),

                            Container(
                                height: 43,
                                width: 148,
                                margin: const EdgeInsets.only(top: 20),
                                child: ElevatedButton(
                                  child: const Text('LOGIN',
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Home()),
                                    );
                                    print(nameController.text);
                                    print(passwordController.text);
                                  },
                                )
                            ),
                            Row(
                              children: <Widget>[
                                const Text('Does not have account?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontFamily: 'MontserratSubrayada'
                                  ),),
                                TextButton(
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(fontSize: 20,color: Colors.white,
                                        fontFamily: 'MontserratSubrayada'),
                                  ),
                                  onPressed: () {
                                    //signup screen
                                  },
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                        top: 25,
                        left: 115,
                        child: const CircleAvatar(
                            radius: 63,
                            backgroundColor: Colors.black,
                            child: const CircleAvatar(
                              backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                              foregroundColor: Colors.black,
                              child: Icon(Icons.person_outline,
                                size: 75,),
                              radius: 58,

                            )
                        )
                    )
                  ],
                ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
