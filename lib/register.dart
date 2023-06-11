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
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  bool _isNotValidate = false;

  void rigestration() async{
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty
        && fullNameController.text.isNotEmpty && phoneNumberController.text.isNotEmpty){
      var  regBody = {
        "email": emailController.text,
        "password": passwordController.text,
        "phoneNumber": phoneNumberController.text,
        "fullName": fullNameController.text
      };
      var response = await http.post(Uri.parse(registeration),
        headers: {"Content-Type":"application/json"},
        body: jsonEncode(regBody)
      );
      try {
        var jsonResponse = jsonDecode(response.body.toString());
        print(jsonResponse['status']);
        if(jsonResponse['status']){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
        }else{
          print("SomeThing Went Wrong");
        }
      } catch (e) {
      }

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
         height: 800,
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
                      ///////////////////////////////FULL_NAME TEXT_FIELD/////////////////////////////////////
                      Container(
                        //padding: const EdgeInsets.only(top: 2),
                        width: 340,
                        height: 65,
                        margin: const EdgeInsets.only(top: 40),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          controller: fullNameController,
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
                            labelText: 'FULL NAME',
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

                      ///////////////////////////////PHONENUMBER TEXT_FIELD/////////////////////////////////////
                      Container(
                        //padding: const EdgeInsets.only(top: 2),
                        width: 340,
                        height: 65,
                        margin: const EdgeInsets.only(top: 0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          controller: phoneNumberController,
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
                            labelText: 'PHONE NUMBER',
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
                        height: 65,
                        margin: const EdgeInsets.only(top: 0),
                        child: TextField(
                          keyboardType: TextInputType.text,
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
                        height: 65,
                        margin: const EdgeInsets.only(top: 0),
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          keyboardType: TextInputType.text,
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

                      SizedBox(height: 15,),

                          ///////////////////////////////REGISTER BOTTON/////////////////////////////////////
                      Container(
                          height: 50,
                          width:200,
                          margin: const EdgeInsets.only(top: 56),
                          child: ElevatedButton(
                            child:Center(
                              child:Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    const Text(
                                      'REGISTER',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'MontserratSubrayada'),
                                    ),
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
                              rigestration();
                            },
                          )),

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
