import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';

class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  _statusState createState() => _statusState();
}

class _statusState extends State<status> {
  bool togglebtn = false;
  String dropdownvalue = 'manual';
  var items = ['manual', 'auto', 'redar', 'step by step'];
  bool tog = false;
  toogle() {
    setState(() {
      tog = !tog;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 53),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 155,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: color().appBackGroundColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: tog == true ? Colors.green : Colors.red,
                        offset: Offset(0, 0), //(x,y)
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: toogle,
                      child: LocaleText(
                        tog == true ? 'connect' : 'disconnect',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              color:
                                  tog == true ? Colors.greenAccent : Colors.red,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 25,
                    decoration: BoxDecoration(
                        color: tog == true ? Colors.green : Colors.red[800],
                        shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: LocaleText(
              'select category',
              style: GoogleFonts.ubuntu(
                textStyle:
                    TextStyle(color: color().headingTextColor, fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(
                  value: dropdownvalue,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: LocaleText(
                        items,
                        style: GoogleFonts.ubuntu(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      dropdownvalue = newValue.toString();
                    });
                  },
                  focusColor: Colors.black,
                  iconEnabledColor: color().TextColor,
                  dropdownColor: color().appBackGroundColor,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      LocaleText(
                        'send',
                        style: GoogleFonts.ubuntu(
                          textStyle:
                              TextStyle(color: Colors.white70, fontSize: 19),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.send,
                          color: color().greenAccent,
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: color().backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    elevation: 3,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: LocaleText(
              'mode feedback',
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(color: color().TextColor, fontSize: 18),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LocaleText(
                'feedback from mqtt',
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(color: Colors.white, fontSize: 21),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: LocaleText(
              'status feedback',
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(color: color().TextColor, fontSize: 18),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LocaleText(
                'status feedback mqtt',
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(color: Colors.white, fontSize: 21),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 73,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RawMaterialButton(
                  splashColor: color().TextColor,
                  fillColor: color().backgroundColor,
                  shape: CircleBorder(),
                  onPressed: () {},
                  child: Container(
                    padding:
                        EdgeInsets.only(right: 9, left: 6, top: 9, bottom: 9),
                    width: 55,
                    child: Image(
                      image: AssetImage('assets/arrowLeft.png'),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  elevation: 5,
                ),
                RawMaterialButton(
                  shape: CircleBorder(),
                  splashColor: color().TextColor,
                  fillColor: color().greenAccent,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(23.0),
                    child: LocaleText(
                      'auto1',
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(color: Colors.white, fontSize: 21),
                      ),
                    ),
                  ),
                ),
                RawMaterialButton(
                  splashColor: color().TextColor,
                  fillColor: color().backgroundColor,
                  shape: CircleBorder(),
                  onPressed: () {},
                  child: Container(
                    padding:
                        EdgeInsets.only(right: 6, left: 9, top: 9, bottom: 9),
                    width: 55,
                    child: Image(
                      image: AssetImage('assets/arrowRight.png'),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  elevation: 5,
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: 22),
              child: RawMaterialButton(
                padding: EdgeInsets.only(left: 2.9, bottom: 3),
                splashColor: color().amberAccent,
                fillColor: Colors.red.shade800,
                onPressed: () {
                  setState(() {
                    togglebtn = !togglebtn;
                  });
                },
                shape: CircleBorder(),
                child: Center(
                  child: Image(
                    width: 70,
                    color:
                        togglebtn == true ? color().greenAccent : Colors.white,
                    image: AssetImage(
                      'assets/recycle.png',
                    ),
                  ),
                ),
                elevation: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
