import 'package:flutter/material.dart';
import 'home_page.dart';
import 'politic_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: false
      ),
      home: HomePage(),
      routes: {
        "/politic":(context)=>Home(),
      },
    );
  }
}


