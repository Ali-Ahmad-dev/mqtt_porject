import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';

class stats extends StatefulWidget {
  const stats({Key? key}) : super(key: key);

  @override
  _statsState createState() => _statsState();
}

class _statsState extends State<stats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color().appBackGroundColor,
      resizeToAvoidBottomInset: true,
      body: Container(
        height: MediaQuery.of(context).size.height - 100,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Statistics',
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(color: Colors.white70, fontSize: 23),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' Total openings',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 21),
                  ),
                ),
                Text(
                  'xxxx ',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.green, fontSize: 21),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' Total Closures',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 21),
                  ),
                ),
                Text(
                  'yyyy ',
                  style: GoogleFonts.ubuntu(
                    textStyle:
                        TextStyle(color: Colors.amber[900], fontSize: 21),
                  ),
                ),
              ],
            ),
            Text(
              'INFO',
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(color: Colors.white70, fontSize: 23),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Broad',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                  ),
                ),
                Text(
                  'From Mqtt',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Version',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                  ),
                ),
                Text(
                  'From Mqtt',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Serilal Number   ',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                  ),
                ),
                Text(
                  'From Mqtt',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' Contacts',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                  ),
                ),
                Text(
                  'Hard Coded',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Text(
                      'Factory Reset',
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(color: Colors.red, fontSize: 19),
                      ),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: color().backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 10,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Text(
                      'Save Params',
                      style: GoogleFonts.ubuntu(
                        textStyle:
                            TextStyle(color: color().greenAccent, fontSize: 19),
                      ),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: color().backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 180,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'Enter APN',
                      hintStyle: GoogleFonts.ubuntu(
                        textStyle:
                            TextStyle(color: Colors.white70, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 8),
                    child: Row(
                      children: [
                        Text(
                          ' Send  ',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                color: color().TextColor, fontSize: 19),
                          ),
                        ),
                        Icon(
                          Icons.send,
                          color: color().greenAccent,
                        ),
                      ],
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: color().backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
