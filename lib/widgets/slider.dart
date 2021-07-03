import 'dart:ui';

import 'package:flutter/material.dart';

class SliderOwn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sliderHeader(),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 50),
            width: double.infinity,
            height: _size.height * 0.3,
            child: PageView(
              controller: PageController(
                viewportFraction: 0.85,
                initialPage: 1,
              ),
              children: [
                _SlideCard('big_hero.jpg', 'Big Hero 6', '2014'),
                _SlideCard('frozen2.jpg', 'Frozen 2', '2019'),
                _SlideCard('sonic.jpeg', 'Big Hero 6', '2014'),
                _SlideCard(
                  'train-dragon.jpg',
                  'How to Train Your Dragon',
                  '2019',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sliderHeader() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Premieres',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class _SlideCard extends StatelessWidget {
  final String path;
  final String title;
  final String anio;

  _SlideCard(this.path, this.title, this.anio);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 5),
              ],
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/$path',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.75, 1],
                        colors: [
                          Color.fromRGBO(0, 0, 0, 0),
                          Colors.black,
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.star_rate_rounded, color: Colors.yellow),
                      Text(
                        '4.5',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Text('$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.05,
              )),
        ),
        Container(
          child: Text(
            '$anio',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
