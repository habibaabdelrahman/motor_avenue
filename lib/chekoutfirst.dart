import 'package:flutter/material.dart';
class CheckOutFirst extends StatelessWidget {
  const CheckOutFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Padding(
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'PLEASE APPLY YOUR ADDRESS',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              fontFamily: 'Hind',
              color: Colors.white,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          top: 5,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'use the info provided to help you use the',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Hind',
              color: Color.fromRGBO(207, 207, 207, 1),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 70),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'accuracy of yur location',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Hind',
              color: Color.fromRGBO(207, 207, 207, 1),
            ),
          ),
        ),
      ),
      Container(
        child: Column(children: [
          Container(
            width: 355,
            height: 60,
            margin: const EdgeInsets.only(top: 15),
            child: TextFormField(
              validator: (value) =>
              value!.isEmpty ? 'You must enter a valid street' : null,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'Street',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 355,
            height: 60,
            margin: const EdgeInsets.only(top: 15),
            child: TextFormField(
              validator: (value) =>
              value!.isEmpty ? 'You must enter a valid street' : null,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'City',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            // padding: const EdgeInsets.only(top: 15),
            width: 355,
            height: 60,
            margin: const EdgeInsets.only(top: 15),
            child: TextFormField(
              validator: (value) =>
              value!.isEmpty ? 'You must enter a valid street' : null,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'Region',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 355,
            height: 60,
            margin: const EdgeInsets.only(top: 15),
            child: TextFormField(
              validator: (value) =>
              value!.isEmpty ? 'You must enter a valid street' : null,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'Door Number ',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 355,
            height: 60,
            margin: const EdgeInsets.only(top: 15),
            child: TextFormField(
              validator: (value) =>
              value!.isEmpty ? 'You must enter a valid street' : null,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'Phone Number',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 355,
            height: 60,
            margin: const EdgeInsets.only(top: 15),
            child: TextFormField(
              validator: (value) =>
              value!.isEmpty ? 'You must enter a valid street' : null,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                labelText: 'Postial Code',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Checkbox(
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
                      activeColor: Colors.white,
                      checkColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 16,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(children: [
                        Text(
                          'My Billing Address Is The same As My',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Shipping Address',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ]),
          ),

        ]),
      ),
    ]);
  }
}
