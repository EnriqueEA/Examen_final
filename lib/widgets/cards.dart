import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final path;
  final title;
  final descrip;
  final anio;

  const Cards(this.path, this.title, this.descrip, this.anio);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(_size.width * 0.03),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/$path',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: _size.width * 0.218,
                    height: _size.width * 0.218,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.7, 1],
                        colors: [
                          Color.fromRGBO(0, 0, 0, 0),
                          Colors.black,
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
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
                ),
              ],
            ),
          ),
          SizedBox(width: 20.0),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '$title',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: _size.width * 0.05,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('$descrip  '),
                    Icon(Icons.circle, size: 6, color: Colors.black45),
                    Text('  $anio'),
                  ],
                ),
                Text('110 min'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
