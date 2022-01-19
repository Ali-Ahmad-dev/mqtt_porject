import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';

class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  _statusState createState() => _statusState();
}

class _statusState extends State<status> {
  String dropdownvalue = 'Manual';
  var items = ['Manual', 'Auto', 'Radar', 'Step by step'];
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
            padding: const EdgeInsets.only(bottom: 20, top: 10),
            child: Text(
              'Connection Status ',
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(color: color().TextColor, fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 145,
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
                      child: Text(
                        tog == true ? 'Connected' : 'Disconnected',
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
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'Select Category ',
              style: GoogleFonts.ubuntu(
                textStyle:
                    TextStyle(color: color().headingTextColor, fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(
                  value: dropdownvalue,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: GoogleFonts.ubuntu(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
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
                      Text(
                        ' Send  ',
                        style: GoogleFonts.ubuntu(
                          textStyle:
                              TextStyle(color: Colors.white70, fontSize: 19),
                        ),
                      ),
                      Icon(
                        Icons.send,
                        color: color().greenAccent,
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
            child: Text(
              'Mode Feedback',
              style: GoogleFonts.ubuntu(
                textStyle:
                    TextStyle(color: color().headingTextColor, fontSize: 18),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Feedback from Mqtt',
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(color: Colors.white, fontSize: 21),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'Status Feedback',
              style: GoogleFonts.ubuntu(
                textStyle:
                    TextStyle(color: color().headingTextColor, fontSize: 18),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Status feedback Mqtt',
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(color: Colors.white, fontSize: 21),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.keyboard_arrow_left_sharp,
                    color: Colors.amber.shade900,
                    size: 59,
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: color().backgroundColor,
                    shape: CircleBorder(),
                    elevation: 3,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Auto',
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(color: Colors.white, fontSize: 21),
                      ),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: color().backgroundColor,
                    shape: CircleBorder(),
                    elevation: 3,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    color: Colors.amber.shade900,
                    size: 59,
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: color().backgroundColor,
                    shape: CircleBorder(),
                    elevation: 3,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: OutlinedButton(
                onPressed: () {},
                child: Icon(
                  Icons.power_settings_new,
                  color: color().TextColor,
                  size: 59,
                ),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: color().backgroundColor,
                  shape: CircleBorder(),
                  elevation: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
