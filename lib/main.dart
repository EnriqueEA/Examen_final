import 'package:flutter/material.dart';

import 'package:examen_final/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(237, 238, 242, 1),
      ),
      home: HomePage(),
    );
  }
}
