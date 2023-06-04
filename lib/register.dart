import 'dart:convert';
import 'config.dart';
import 'package:flutter/material.dart';
import 'package:motor_avenue/Home.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:http/http.dart' as http;


class register extends StatefulWidget {
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isNotValidate = false;

  void rigestration() async{
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
      var  regBody = {
        "email": emailController.text,
        "password": passwordController.text
      };

      var response = await http.post(Uri.parse(registeration),
        headers: {"Content-Type":"application/json"},
        body: jsonEncode(regBody)
      );
      print(response);
    }else{
      setState(() {
        _isNotValidate = true;
      });
    }
  }

  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
       child: Container(
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
      ///////////////////////////////logoo image/////////////////////////////////////
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),

            ///////////////////////////////Register widget/////////////////////////////////////
            WidgetAnimator(
              incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
                duration: Duration(seconds: 3),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: 33,
                  left: 5,
                  right: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
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
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(padding: EdgeInsets.only(top: 20,left: 20),
                          child:Column(
                              children: [
                                Stack(
                                  children:[
                                Container(
                                  margin: EdgeInsets.only(top: 40,left: 2),
                                  child: Image.asset(
                                    'assets/images/logo white.png',
                                    width: 86.5,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 105),
                                child:Text(
                                  'REGISTER',
                                  style: TextStyle(
                                      fontSize: 27.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'MontserratSubrayada'),
                                ),
                ),
                        ]
                      ),
                              ]
                          ),
                        ),
                      ),
                      ///////////////////////////////FIRST_NAME TEXT_FIELD/////////////////////////////////////
                      Container(
                        //padding: const EdgeInsets.only(top: 2),
                        width: 340,
                        height: 60,
                        margin: const EdgeInsets.only(top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            errorText: _isNotValidate ? 'You must enter a valid email'
                                : null,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: 'FRIST NAME',
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      ///////////////////////////////LAST_NAME TEXT_FIELD/////////////////////////////////////
                      Container(
                        //padding: const EdgeInsets.only(top: 2),
                        width: 340,
                        height: 60,
                        margin: const EdgeInsets.only(top: 0),
                        child: TextField(

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
                            labelText: 'LAST NAME',
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      ///////////////////////////////E-MAIL TEXT_FIELD/////////////////////////////////////
                      Container(
                        width: 340,
                        height: 60,
                        margin: const EdgeInsets.only(top: 0),
                        child: TextField(
                          controller: emailController,
                          decoration:  InputDecoration(
                            errorText: _isNotValidate ? 'You must enter a valid email'
                                : null,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            labelText: 'E-Mail',
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      ///////////////////////////////PASSWORD TEXT_FIELD/////////////////////////////////////
                      Container(
                        width: 340,
                        height: 60,
                        margin: const EdgeInsets.only(top: 0),
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          decoration:  InputDecoration(
                            errorText: _isNotValidate ? 'You must enter a valid email'
                                : null,
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
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            prefixIcon: Icon(
                              Icons.key,
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: Colors.grey,
                          ),
                        ),
                      ),
                      Center(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 38,
                              width: 148,
                              margin: const EdgeInsets.only(top: 30, ),
                              child: ElevatedButton(
                                child: const Text(
                                  'MALE',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'MontserratSubrayada'),
                                ),
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
                                              BorderRadius.circular(18))),
                                ),
                                onPressed: () {},
                              )),
                          Container(
                              height: 38,
                              width: 148,
                              margin: const EdgeInsets.only(top: 30,left: 15 ),
                              child: ElevatedButton(
                                child: const Text(
                                  'FEMALE',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'MontserratSubrayada'),
                                ),
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
                                              BorderRadius.circular(21.5))),
                                ),
                                onPressed: () {
                                  print(emailController.text);
                                  print(passwordController.text);
                                },
                              )),
                        ],
                      ),
                ),
                      SizedBox(height: 15,),
                      Center(
                      child:Stack(
                        children:[
                      Padding(padding: EdgeInsets.only(left: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                fillColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 25,
                                  ),
                                ),
                                onChanged: (bool? value) {},
                                activeColor: Colors.blue,
                                checkColor: Colors.white,

                              ),
                              Text(
                                'I HAVE READ AND ACCEPT THE ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'PRIVACY POLICY',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 8,top: 30),
                          child:Row(
                            children: [
                              Checkbox(
                                value: false,
                                fillColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 25,
                                  ),
                                ),
                                onChanged: (bool? value) {},
                                activeColor: Colors.blue,
                                checkColor: Colors.white,
                              ),
                              Text(
                                'BY CLICKING YOUR EMAIL WILL BE UPDATED',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),),
                          ]
                      ),
                          ]),
                ),
                          ///////////////////////////////REGISTER BOTTON/////////////////////////////////////
                      Container(
                          height: 38,
                          width: 248,
                          margin: const EdgeInsets.only(top: 30,left: 15 ),
                          child: ElevatedButton(
                            child: const Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'MontserratSubrayada'),
                            ),
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
                                      BorderRadius.circular(21.5))),
                            ),
                            onPressed: () {
                              rigestration();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ));
                              print(emailController.text);
                              print(passwordController.text);
                            },
                          )),
                      /*Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                              child: SwipeableButtonView(
                                  buttonText: "SLIDE TO REGISTER",
                                  buttonWidget: Container(
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.black,
                                    ),
                                  ),
                                  buttonColor: Colors.white70,
                                  activeColor: Color.fromRGBO(185, 185, 185, 0.52),
                                  isFinished: isFinished,
                                  onWaitingProcess: () {
                                    rigestration();
                                    Future.delayed(Duration(milliseconds: 1000), () {
                                      setState(() {
                                        isFinished = true;
                                      });
                                    });
                                  },
                                  onFinish: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Home(),
                                        ));
                                    setState(() {
                                      isFinished = true;
                                    });
                                  })),*/

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 45,)
          ],
        ),
      ),
    )
    ),);
  }
}
