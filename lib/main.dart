import 'package:flutter/material.dart';

import 'Pages/CustomDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      debugShowCheckedModeBanner: false,
      home: CustomMenuDrawer(),
    );
  }
}
