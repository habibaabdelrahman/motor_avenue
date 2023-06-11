import 'dart:io';
import 'package:flutter/material.dart';


class ImagePickerScreen extends StatefulWidget {
  @override
  _ImagePickerScreenState createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {

  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    ChoiceChip(
                      label: const Text(
                        'BENZEN',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'MontserratSubrayada',
                        ),
                      ),
                      selected: _selectedCategory == 'BENZEN',
                      onSelected: (selected) {
                        setState(() {
                          _selectedCategory = (selected ? 'BENZEN' : null)!;
                        });
                      },
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21.5),
                      ),
                      selectedColor: Colors.amber, // Customize the selected color
                    ),
                    SizedBox(width: 15),
                    ChoiceChip(
                      label: const Text(
                        'ELECTRONIC',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'MontserratSubrayada',
                        ),
                      ),
                      selected: _selectedCategory == 'ELECTRONIC',
                      onSelected: (selected) {
                        setState(() {
                          _selectedCategory = (selected ? 'ELECTRONIC' : null)!;
                        });
                      },
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21.5),
                      ),
                      selectedColor: Colors.amber, // Customize the selected color
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 3),
                    child: Row(
                      children: [
                        ChoiceChip(
                          label: const Text(
                            'HYBRID',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'MontserratSubrayada',
                            ),
                          ),
                          selected: _selectedCategory == 'HYBRID',
                          onSelected: (selected) {
                            setState(() {
                              _selectedCategory = (selected ? 'HYBRID' : null)!;
                            });
                          },
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21.5),
                          ),
                          selectedColor: Colors.amber, // Customize the selected color
                        ),
                        SizedBox(width: 15),
                        ChoiceChip(
                          label: const Text(
                            'DIESEL',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'MontserratSubrayada',
                            ),
                          ),
                          selected: _selectedCategory == 'DIESEL',
                          onSelected: (selected) {
                            setState(() {
                              _selectedCategory = (selected ? 'DIESEL' : null)!;
                            });
                          },
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21.5),
                          ),
                          selectedColor: Colors.amber, // Customize the selected color
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
                        padding: EdgeInsets.only(left: 20, top: 3),
                        child: ChoiceChip(
                          label: const Text(
                            'NATURAL GAS',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'MontserratSubrayada',
                            ),
                          ),
                          selected: _selectedCategory == 'NATURAL GAS',
                          onSelected: (selected) {
                            setState(() {
                              _selectedCategory = (selected ? 'NATURAL GAS' : null)!;
                            });
                          },
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21.5),
                          ),
                          selectedColor: Colors.amber, // Customize the selected color
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }

}
