import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:examen_final/widgets/slider.dart';
import 'package:examen_final/widgets/cards.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SliderOwn(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 28.0),
                child: Text('In this week',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0)),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Cards(
                          'train-dragon.jpg',
                          'How to Train Your Dragon',
                          'Jacynthe Lubowitz',
                          '2019',
                        ),
                        Divider(),
                        Cards(
                          'sonic.jpeg',
                          'Sonic the Hedgehog',
                          'Irene Amato',
                          '2020',
                        ),
                        Divider(),
                        Cards(
                          'abominable.jpg',
                          'Abominable',
                          'Tito Predovic',
                          '2019',
                        ),
                        Divider(),
                        Cards(
                          'bop.jpg',
                          'Birds of Prey',
                          'Tito Predovic',
                          '2019',
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items(),
      ),
    );
  }

  List<BottomNavigationBarItem> _items() {
    return [
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(top: 10),
          child: FaIcon(FontAwesomeIcons.film, color: Colors.purple[500]),
        ),
        label: ' ',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.camera_roll_outlined, color: Colors.black),
        label: ' ',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search, color: Colors.black),
        label: ' ',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.subject, color: Colors.black),
        label: ' ',
      ),
    ];
  }
}
