import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mqtt_project/views/color.dart';
import 'package:mqtt_project/views/login.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: color().amberAccent,
        child: OutlinedButton(
          child: Text('Nav to login Screen'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => login()));
          },
        ),
      ),
    );
  }
}
