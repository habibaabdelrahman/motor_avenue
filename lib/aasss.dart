import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HeightChangeableContainer extends StatefulWidget {
  @override
  _HeightChangeableContainerState createState() =>
      _HeightChangeableContainerState();
}

class _HeightChangeableContainerState extends State<HeightChangeableContainer> {
  double containerHeight = 100.0;

  void _toggleWidth() {
    setState(() {
      containerHeight = containerHeight == 155.0 ? 360.0 : 155.0;
    });
  }// Initial height of the container

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Height Changeable Container'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15, top: 3),
            child: Column(
              children: [
                Stack(children: [
                  GestureDetector(
                    onTap: _toggleWidth,
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      duration: Duration(milliseconds: 500),
                      width: 150,
                      height: containerHeight,
                      child: Center(
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 250,
                            autoPlay: false,
                            viewportFraction: 1.0,
                          ),
                          items: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                  'assets/images/car 1.png',
                                  fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                  'assets/images/car1_1.png',
                                  fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                  'assets/images/car1_2.png',
                                  fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                  'assets/images/car1_3.png',
                                  fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                  'assets/images/car1_4.png',
                                  fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                  'assets/images/car1_5.png',
                                  fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                  'assets/images/car1_6.png',
                                  fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                  'assets/images/car1_7.png',
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 20,
                            offset: Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.only(
                        top: 220,
                      ),
                      ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HeightChangeableContainer(),
  ));
}
