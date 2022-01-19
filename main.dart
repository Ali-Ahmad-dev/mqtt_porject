import 'package:flutter/material.dart';
import 'package:mqtt_project/views/home.dart';
import 'package:mqtt_project/views/login.dart';

import 'package:mqtt_project/views/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
