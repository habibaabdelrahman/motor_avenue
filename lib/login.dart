import 'dart:convert';
import 'package:motor_avenue/register.dart';
import 'config.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:motor_avenue/Home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';


class login extends StatefulWidget {

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late SharedPreferences prefs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }
  void initSharedPref() async{
    prefs = await SharedPreferences.getInstance();
  }

  void loginUser() async{
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
      var reqBody = {
        "email":emailController.text,
        "password":passwordController.text
      };
      var response = await http.post(Uri.parse(loginuser),
          headers: {"Content-Type":"application/json"},
          body: jsonEncode(reqBody)
      );
      var jsonResponse = jsonDecode(response.body.toString());
      if(jsonResponse['status']){
        var myToken = jsonResponse['token'];
        prefs.setString('token', myToken);
      }else{
        print('Something went wrong');
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    bool _rememberMe = false;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Container(
          height: 800,
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
                      fontFamily: 'MontserratSubrayada'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                WidgetAnimator(
                  incomingEffect:
                      WidgetTransitionEffects.incomingSlideInFromBottom(
                    duration: Duration(seconds: 3),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 87, bottom: 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
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
                        child: Form(
                          key: _formKey,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 20, top: 100),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ///////////////////////////////E-MAIL TEXT_FIELD/////////////////////////////////////
                                Container(
                                  //padding: const EdgeInsets.only(top: 2),
                                  width: 320,
                                  height: 60,
                                  margin: const EdgeInsets.only(top: 0),
                                  child: TextFormField(
                                    validator: (value) => value!.isEmpty
                                        ? 'You must enter a valid email'
                                        : null,
                                    controller: emailController,
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                      labelText: 'E-Mail',
                                      labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          ),
                                      filled: true,
                                      fillColor: Colors.grey,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20.0),

                                ///////////////////////////////PASSWORD TEXT_FIELD/////////////////////////////////////
                                Container(
                                  width: 320,
                                  height: 60,
                                  margin: const EdgeInsets.only(top: 15),
                                  child: TextFormField(
                                    validator: (value) => value!.length <= 6
                                        ? 'Your password must be larger than 6 characters'
                                        : null,
                                    obscureText: true,
                                    controller: passwordController,
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      labelText: 'PASSWORD',
                                      labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      prefixIcon: Icon(
                                        Icons.key,
                                        color: Colors.white,
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey,
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                      left: 30,
                                    )),
                                    // your other child widgets in the row
                                  ],
                                ),


                                ///////////////////////////////LOGIN BUTTON/////////////////////////////////////

                                Container(
                                    height: 43,
                                    width: 148,
                                    margin: const EdgeInsets.only(top: 46),
                                    child: ElevatedButton(
                                      child:Center(
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:[
                                       const Text(
                                        'LOGIN',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'MontserratSubrayada'),
                                      ),
                                         SizedBox(width: 5,),
                                          Icon(Icons.play_arrow_rounded,size: 25,)
                                      ]
                                    ),),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                 Colors.amber),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.black),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        21.5))),
                                      ),
                                      onPressed: ()  {
                                        loginUser();
                                      },
                                    )),
                                SizedBox(height: 10,),
                                Row(
                                  children: <Widget>[
                                    const Text(
                                      'Does not have account?',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          fontFamily: 'MontserratSubrayada'),
                                    ),
                                    TextButton(
                                      child: const Text(
                                        'Sign up',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontFamily: 'MontserratSubrayada'),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => register(),
                                            ));
                                      },
                                    )
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ],
                            ),
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
                                backgroundColor:
                                    Color.fromRGBO(217, 217, 217, 1),
                                foregroundColor: Colors.black,
                                child: Icon(
                                  Icons.person_outline,
                                  size: 75,
                                ),
                                radius: 58,
                              )))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
