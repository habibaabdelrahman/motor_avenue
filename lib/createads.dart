// import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'config.dart';
import 'package:motor_avenue/Home.dart';
import 'package:motor_avenue/LiveAuction.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class createads extends StatefulWidget {
  final token;
  const createads({@required this.token,Key? key}) : super(key: key);

  @override
  State<createads> createState() => _createadsState();
}

class _createadsState extends State<createads> {
  final _controllar = PageController();
  late String userId;

  TextEditingController _carModel = TextEditingController();
  TextEditingController _carLocation = TextEditingController();
  TextEditingController _carBrand = TextEditingController();
  TextEditingController _carPrice = TextEditingController();
  TextEditingController _carYear = TextEditingController();
  String? _carTransmission;
  String? _carCondtion;
  String? _carType;
  String? _carFuel;
  String? _carEngineCapacity;
  TextEditingController _carColor = TextEditingController();
  TextEditingController _carKilo = TextEditingController();
  TextEditingController _carTitle = TextEditingController();
  TextEditingController _carDescription = TextEditingController();

  List? items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map<String,dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);
    userId = jwtDecodedToken['_id'];
    // getTodoList(userId);
  }

  void addTodo() async {
    if (_carYear.text.isNotEmpty &&
        _carBrand.text.isNotEmpty &&
        _carModel.text.isNotEmpty &&
        _carPrice.text.isNotEmpty &&
        _carLocation.text.isNotEmpty &&
        _carFuel != null &&
        _carTransmission != null &&
        _carCondtion != null &&
        _carColor.text.isNotEmpty &&
        _carType != null &&
        _carEngineCapacity != null &&
        _carKilo.text.isNotEmpty &&
        _carTitle.text.isNotEmpty &&
        _carDescription.text.isNotEmpty) {
      var regBody = {
        "userId": userId,
        "carLocation": _carLocation.text,
        "carBrand": _carBrand.text,
        "carYear": _carYear.text,
        "carModel": _carModel.text,
        "carPrice": _carPrice.text,
        "carFuel": _carFuel,
        "carTransmission": _carTransmission,
        "carCondtion": _carCondtion,
        "carColor": _carColor.text,
        "carType": _carType,
        "carEngineCapacity": _carEngineCapacity,
        "carKilo": _carKilo.text,
        "carTitle": _carTitle.text,
        "carDescription": _carDescription.text,
      };

      var response = await http.post(Uri.parse(addtodo),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody));
      var jsonResponse = jsonDecode(response.body.toString());
      print(jsonResponse['status']);
      if (jsonResponse['status']) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ));
      } else {
        print("SomeThing Went Wrong");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ));
                    },
                    iconSize: 32,
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 30, left: 20)),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: Image.asset(
                        'assets/images/logo white.png',
                        width: 72,
                      ),
                    ),
                  ),
                ),
                IconButton(
                    icon: const Icon(Icons.share_outlined),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    iconSize: 35,
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 30, right: 20)),
              ],
            ),
            SizedBox(
              height: 640,
              child: PageView(controller: _controllar, children: [
                Stack(children: [
                  WidgetAnimator(
                    incomingEffect:
                        WidgetTransitionEffects.incomingSlideInFromBottom(
                      duration: Duration(seconds: 3),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(21),
                            topRight: Radius.circular(21),
                            bottomLeft: Radius.circular(21)),
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromRGBO(0, 0, 0, 0.47)
                                .withOpacity(0.2),
                            const Color.fromRGBO(255, 255, 255, 0.26)
                                .withOpacity(0.2),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(
                                  children: [
                                    const Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 280),
                                      child: const Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          ' CREATE',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Hind',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 250, top: 8),
                                      child: Icon(
                                        Icons.attach_file_outlined,
                                        size: 38,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 22, left: 290, bottom: 4),
                                      child: const Text(
                                        'ADS',
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Hind',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        icon: const Icon(Icons.arrow_back_ios),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    LiveAuction(),
                                              ));
                                        },
                                        iconSize: 35,
                                        color: Colors.white,
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 6)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromBottom(
                        duration: Duration(seconds: 3),
                      ),
                      child: Container(
                        margin:
                            const EdgeInsets.only(top: 74, left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(21),
                              bottomLeft: Radius.circular(21)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color.fromRGBO(0, 0, 0, 0.47)
                                  .withOpacity(0.2),
                              const Color.fromRGBO(255, 255, 255, 0.26)
                                  .withOpacity(0.2),
                            ],
                          ),
                        ),
                        child: ListView(
                            padding: EdgeInsets.only(top: 5),
                            children: [
                              Column(
                                children: <Widget>[
                                  Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 20, right: 20, top: 5, bottom: 5),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Image.asset(
                                            'assets/images/car 1.png',
                                            height: 170,
                                            width: 410,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 120, top: 90),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add_circle_outline,
                                              size: 27,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'ADD IMAGES',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 33,
                                          width: 220,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(21)),
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.77),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 20,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          margin: const EdgeInsets.only(
                                              top: 142, right: 25),
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 10, right: 5),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'UPLOAD UP TO 30 PHOTOS',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Icon(
                                                        Icons.photo_library,
                                                        size: 20)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: 30,
                                            width: 65,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(20),
                                                  topLeft: Radius.circular(15)),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.4),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.3),
                                                  spreadRadius: 3,
                                                  blurRadius: 20,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            margin: const EdgeInsets.only(
                                                top: 7, left: 25),
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 2, left: 1, right: 5),
                                              child: IconButton(
                                                  icon: Icon(Icons.camera_enhance_rounded),
                                                color: Colors.black54, onPressed: () {

                                                 },
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Divider(
                                        height: 45,
                                        thickness: 2,
                                        indent: 23,
                                        endIndent: 20,
                                        color: Colors.white,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 30,
                                          width: 85,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(12),
                                                topLeft: Radius.circular(12),
                                                bottomLeft:
                                                    Radius.circular(12)),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 20,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          margin: const EdgeInsets.only(
                                              top: 21, left: 15),
                                          child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 8, left: 12, right: 5),
                                              child: Text('AD TYPE',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                  ))),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 20, top: 10),
                                        child: Row(children: [
                                          ElevatedButton(
                                            child: const Text(
                                              'FOR SALE',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily:
                                                      'MontserratSubrayada'),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              21.5))),
                                            ),
                                            onPressed: () {},
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          ElevatedButton(
                                            child: const Text(
                                              'WANTED ITEM',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily:
                                                      'MontserratSubrayada'),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              21.5))),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ]),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20, top: 10),
                                                child: ElevatedButton(
                                                  child: const Text(
                                                    'ASSIGN TO AUCTION',
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontFamily:
                                                            'MontserratSubrayada'),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Colors.white),
                                                    shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        21.5))),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 22, left: 15),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 8,
                                                      left: 13,
                                                      right: 5),
                                                  child: Text('BRAND',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                          Container(
                                            width: 320,
                                            height: 60,
                                            margin: const EdgeInsets.only(
                                                top: 70, left: 35),
                                            child: TextField(
                                              keyboardType: TextInputType.text,
                                              controller: _carBrand,
                                              decoration: const InputDecoration(
                                                filled: true,
                                                fillColor: Color.fromRGBO(
                                                    227,
                                                    227,
                                                    227,
                                                    0.9490196078431372),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color.fromRGBO(
                                                          227,
                                                          227,
                                                          227,
                                                          0.9490196078431372)),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color.fromRGBO(
                                                          227,
                                                          227,
                                                          227,
                                                          0.9490196078431372)),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color.fromRGBO(
                                                          227,
                                                          227,
                                                          227,
                                                          0.9490196078431372)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 21, left: 15),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 8,
                                                      left: 12,
                                                      right: 5),
                                                  child: Text('MODLE',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 30, top: 10),
                                                child: Text(
                                                  'Modle*',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 320,
                                        height: 60,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: _carModel,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Color.fromRGBO(227, 227,
                                                227, 0.9490196078431372),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 22, left: 15),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 8,
                                                      left: 14,
                                                      right: 5),
                                                  child: Text('PRICE',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 30, top: 10),
                                                child: Text(
                                                  'Price*',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 320,
                                        height: 60,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: _carPrice,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Color.fromRGBO(227, 227,
                                                227, 0.9490196078431372),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 21, left: 15, right: 15),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 7,
                                                      left: 15,
                                                      right: 5),
                                                  child: Text('FUEL TYPE',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Row(
                                              children: [
                                                ChoiceChip(
                                                  label: const Text(
                                                    'BENZEN',
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontFamily:
                                                          'MontserratSubrayada',
                                                    ),
                                                  ),
                                                  selected:
                                                      _carFuel == 'BENZEN',
                                                  onSelected: (selected) {
                                                    setState(() {
                                                      _carFuel = selected
                                                          ? 'BENZEN'
                                                          : null;
                                                      print("done");
                                                    });
                                                  },
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5),
                                                  ),
                                                  selectedColor: Colors
                                                      .amber, // Customize the selected color
                                                ),
                                                SizedBox(width: 15),
                                                ChoiceChip(
                                                  label: Text(
                                                    'ELECTRONIC',
                                                    style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontFamily:
                                                          'MontserratSubrayada',
                                                    ),
                                                  ),
                                                  selected:
                                                      _carFuel == 'ELECTRONIC',
                                                  onSelected: (bool selected) {
                                                    setState(() {
                                                      _carFuel = (selected
                                                          ? 'ELECTRONIC'
                                                          : null)!;
                                                    });
                                                  },
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21.5),
                                                  ),
                                                  selectedColor: Colors
                                                      .amber, // Customize the selected color
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20, top: 3),
                                                child: Row(
                                                  children: [
                                                    ChoiceChip(
                                                      label: const Text(
                                                        'HYBRID',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.black87,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontFamily:
                                                              'MontserratSubrayada',
                                                        ),
                                                      ),
                                                      selected:
                                                          _carFuel == 'HYBRID',
                                                      onSelected: (selected) {
                                                        setState(() {
                                                          _carFuel = (selected
                                                              ? 'HYBRID'
                                                              : null)!;
                                                        });
                                                      },
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(21.5),
                                                      ),
                                                      selectedColor: Colors
                                                          .amber, // Customize the selected color
                                                    ),
                                                    SizedBox(width: 15),
                                                    ChoiceChip(
                                                      label: const Text(
                                                        'DIESEL',
                                                        style: TextStyle(
                                                          color: Colors.black87,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontFamily:
                                                              'MontserratSubrayada',
                                                        ),
                                                      ),
                                                      selected:
                                                          _carFuel == 'DIESEL',
                                                      onSelected: (selected) {
                                                        setState(() {
                                                          _carFuel = (selected
                                                              ? 'DIESEL'
                                                              : null)!;
                                                        });
                                                      },
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(21.5),
                                                      ),
                                                      selectedColor: Colors
                                                          .amber, // Customize the selected color
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20, top: 3),
                                                    child: ChoiceChip(
                                                      label: const Text(
                                                        'NATURAL GAS',
                                                        style: TextStyle(
                                                          color: Colors.black87,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontFamily:
                                                              'MontserratSubrayada',
                                                        ),
                                                      ),
                                                      selected: _carFuel ==
                                                          'NATURAL GAS',
                                                      onSelected: (selected) {
                                                        setState(() {
                                                          _carFuel = (selected
                                                              ? 'NATURAL GAS'
                                                              : null)!;
                                                        });
                                                      },
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(21.5),
                                                      ),
                                                      selectedColor: Colors
                                                          .amber, // Customize the selected color
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 22, left: 15),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 8,
                                                      left: 17,
                                                      right: 5),
                                                  child: Text('YEAR',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 30, top: 10),
                                                child: Text(
                                                  'Year',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 320,
                                        height: 60,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: TextField(
                                          controller: _carYear,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Color.fromRGBO(227, 227,
                                                227, 0.9490196078431372),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 21, left: 15, right: 20),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 8,
                                                      left: 15,
                                                      right: 5),
                                                  child:
                                                      Text('TRANSMISSION TYPE',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 7),
                                            child: Row(children: [
                                              ChoiceChip(
                                                label: const Text(
                                                  'AUTOMATIC',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carTransmission == 'AUTOMATIC',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carTransmission = selected
                                                        ? 'AUTOMATIC'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              ChoiceChip(
                                                label: const Text(
                                                  'MANUAL',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carTransmission == 'MANUAL',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carTransmission = selected
                                                        ? 'MANUAL'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 110,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 21, left: 15, right: 30),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 8,
                                                      left: 15,
                                                      right: 5),
                                                  child: Text('CONDITION',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 7),
                                            child: Row(children: [
                                              ChoiceChip(
                                                label: const Text(
                                                  'NEW',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carCondtion == 'NEW',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carCondtion = selected
                                                        ? 'NEW'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              ChoiceChip(
                                                label: const Text(
                                                  'USED',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carCondtion == 'USED',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carCondtion = selected
                                                        ? 'USED'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 21, left: 15),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 8,
                                                      left: 15,
                                                      right: 5),
                                                  child: Text('COLOR',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 30, top: 10),
                                                child: Text(
                                                  'Color',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 320,
                                        height: 60,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: _carColor,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Color.fromRGBO(227, 227,
                                                227, 0.9490196078431372),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 110,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 21, left: 15, right: 15),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 7,
                                                      left: 15,
                                                      right: 5),
                                                  child: Text('BODY TYPE',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Row(children: [
                                              ChoiceChip(
                                                label: const Text(
                                                  'SEDAN',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carType == 'SEDAN',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carType = selected
                                                        ? 'SEDAN'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              ChoiceChip(
                                                label: const Text(
                                                  '4X4',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carType == '4X4',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carType = selected
                                                        ? '4X4'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              ChoiceChip(
                                                label: const Text(
                                                  'SUV',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carType == 'SUV',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carType = selected
                                                        ? 'SUV'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 3),
                                            child: Row(children: [
                                              ChoiceChip(
                                                label: const Text(
                                                  'COUPE',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carType == 'COUPE',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carType = selected
                                                        ? 'COUPE'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              ChoiceChip(
                                                label: const Text(
                                                  'CABRIOLET',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carType == 'CABRIOLET',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carType = selected
                                                        ? 'CABRIOLET'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 3),
                                            child: Row(children: [
                                              ChoiceChip(
                                                label: const Text(
                                                  'VAN/BUS',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carType == 'VAN/BUS',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carType = selected
                                                        ? 'VAN/BUS'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              ChoiceChip(
                                                label: const Text(
                                                  'OTHER',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carType == 'OTHER',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carType = selected
                                                        ? 'OTHER'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 24,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 22, left: 15, right: 30),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 7,
                                                      left: 15,
                                                      right: 5),
                                                  child: Text('ENGINE CAPACITY',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 7),
                                            child: Row(children: [
                                              ChoiceChip(
                                                label: const Text(
                                                  '0-800',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carEngineCapacity == '0-800',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carEngineCapacity = selected
                                                        ? '0-800'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              ChoiceChip(
                                                label: const Text(
                                                  '1000-1300',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carEngineCapacity == '1000-1300',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carEngineCapacity = selected
                                                        ? '1000-1300'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 3),
                                            child: Row(children: [
                                              ChoiceChip(
                                                label: const Text(
                                                  '1400-1500',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carEngineCapacity == '1400-1500',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carEngineCapacity = selected
                                                        ? '1400-1500'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              ChoiceChip(
                                                label: const Text(
                                                  '1600',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carEngineCapacity == '1600',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carEngineCapacity = selected
                                                        ? '1600'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 3),
                                            child: Row(children: [
                                              ChoiceChip(
                                                label: const Text(
                                                  '1800-2000',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carEngineCapacity == '1800-2000',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carEngineCapacity = selected
                                                        ? '1800-2000'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              ChoiceChip(
                                                label: const Text(
                                                  '2200-2800',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontFamily:
                                                    'MontserratSubrayada',
                                                  ),
                                                ),
                                                selected:
                                                _carEngineCapacity == '2200-2800',
                                                onSelected: (selected) {
                                                  setState(() {
                                                    _carEngineCapacity = selected
                                                        ? '2200-2800'
                                                        : null;
                                                    print("done");
                                                  });
                                                },
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      21.5),
                                                ),
                                                selectedColor: Colors
                                                    .amber, // Customize the selected color
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20, top: 3),
                                                child:  ChoiceChip(
                                                  label: const Text(
                                                    'MORE THAN 3000',
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.black87,
                                                      fontWeight:
                                                      FontWeight.normal,
                                                      fontFamily:
                                                      'MontserratSubrayada',
                                                    ),
                                                  ),
                                                  selected:
                                                  _carEngineCapacity == 'MORE THAN 3000',
                                                  onSelected: (selected) {
                                                    setState(() {
                                                      _carEngineCapacity = selected
                                                          ? 'MORE THAN 3000'
                                                          : null;
                                                      print("done");
                                                    });
                                                  },
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        21.5),
                                                  ),
                                                  selectedColor: Colors
                                                      .amber, // Customize the selected color
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 110,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 22, left: 15),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 7,
                                                      left: 15,
                                                      right: 5),
                                                  child: Text('KILOMETERS',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 320,
                                        height: 60,
                                        margin: const EdgeInsets.only(top: 8),
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: _carKilo,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Color.fromRGBO(227, 227,
                                                227, 0.9490196078431372),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 110,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 22, left: 15),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 7,
                                                      left: 17,
                                                      right: 5),
                                                  child: Text('LOCATION',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 320,
                                        height: 60,
                                        margin: const EdgeInsets.only(top: 8),
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: _carLocation,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Color.fromRGBO(227, 227,
                                                227, 0.9490196078431372),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Divider(
                                            height: 45,
                                            thickness: 2,
                                            indent: 23,
                                            endIndent: 20,
                                            color: Colors.white,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 30,
                                              width: 160,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12),
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomLeft:
                                                        Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    spreadRadius: 3,
                                                    blurRadius: 20,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              margin: const EdgeInsets.only(
                                                  top: 22, left: 15),
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 7,
                                                      left: 15,
                                                      right: 5),
                                                  child: Text('ADD DESCRIPTION',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 30, top: 10),
                                                child: Text(
                                                  'AD TITLE',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 320,
                                        height: 60,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: _carTitle,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Color.fromRGBO(227, 227,
                                                227, 0.9490196078431372),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 30,
                                                  top: 10,
                                                ),
                                                child: Text(
                                                  'Describe what you are selling',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 320,
                                        height: 60,
                                        margin: const EdgeInsets.only(
                                            top: 4, bottom: 10),
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: _carDescription,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Color.fromRGBO(227, 227,
                                                227, 0.9490196078431372),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      227,
                                                      227,
                                                      227,
                                                      0.9490196078431372)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                      )),
                ]),
              ]),
            ),
            Container(
                height: 45,
                width: 160,
                margin: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: ElevatedButton(
                  child: const Text(
                    'SUBMIT',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MontserratSubrayada'),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amber),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                  ),
                  onPressed: () {
                    addTodo();
                  },
                )),
          ],
        ),
      ),
    ));
  }
}
