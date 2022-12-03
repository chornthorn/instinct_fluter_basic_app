import 'package:flutter/material.dart';

import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

// root widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Kantumruy Pro',
      ),
    );
  }
}
