import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mqtt_project/views/login.dart';
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: LocaleText(
                  'statistics',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white70, fontSize: 23),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LocaleText(
                    'current read',
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
                  LocaleText(
                    'total opening',
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
                  LocaleText(
                    'total closures',
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
              LocaleText(
                'info',
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(color: Colors.white70, fontSize: 23),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LocaleText(
                    'broad',
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                    ),
                  ),
                  LocaleText(
                    'from mqtt',
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LocaleText(
                    'version',
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                    ),
                  ),
                  LocaleText(
                    'from mqtt',
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LocaleText(
                    'serial number',
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                    ),
                  ),
                  LocaleText(
                    'from mqtt',
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(color: Colors.white70, fontSize: 19),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LocaleText(
                    'contacts',
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
                      child: LocaleText(
                        'factory reset',
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
                      child: LocaleText(
                        'save parameters',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              color: color().greenAccent, fontSize: 19),
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
                    height: 40,
                    width: 170,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      keyboardType: TextInputType.url,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          bottom: 20,
                          left: 20,
                        ),
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
                    onPressed: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 10, right: 8),
                      child: Row(
                        children: [
                          LocaleText(
                            'send',
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                  color: color().TextColor, fontSize: 19),
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: SizedBox(
                    width: 210,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login_1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LocaleText(
                              'logout',
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    color: color().TextColor, fontSize: 19),
                              ),
                            ),
                            Icon(
                              Icons.logout,
                              color: Colors.red.shade800,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: color().backgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        elevation: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
