import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mqtt_project/views/home.dart';
import '';
import 'package:mqtt_project/views/register.dart';
import 'color.dart';

class login_1 extends StatefulWidget {
  @override
  _login_1State createState() => _login_1State();
}

class _login_1State extends State<login_1> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  bool _isObscure = true;
  String dropdownvalue = ' LANGUAGE';
  //  LocaleNotifier.of(context)?.change('en'),
  //   LocaleNotifier.of(context)?.change('fr');
  //   LocaleNotifier.of(context)?.change('it');

  bool tog = false;
  toogle() {
    setState(() {
      tog = !tog;
    });
  }

  // List<Item> users = <Item>[
  //   Item(
  //     'ENGLISH',
  //     Image.asset('icons/flags/png/gb.png', package: 'country_icons'),
  //   ),
  //   Item(
  //     'FRENCH',
  //     Image.asset('icons/flags/png/fr.png', package: 'country_icons'),
  //   ),
  //   Item(
  //     'ITALIAN',
  //     Image.asset('icons/flags/png/it.png', package: 'country_icons'),
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 15, right: 15, top: 110),
        decoration: BoxDecoration(
          color: color().appBackGroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: LocaleText(
                'signin',
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    color: color().amberAccent,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: LocaleText(
                          'enterusername',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Colors.white60),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              // errorText: validate
                              //     ? 'Username Can\'t Be Empty'
                              //     : null,
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white70)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: color().amberAccent,
                              )),
                              fillColor: Colors.transparent,
                              filled: true,
                              hintText: 'Robert Wilson',
                              hintStyle: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.white54,
                                  ),
                                  onPressed: () {})),
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white24,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: LocaleText(
                          'password',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Colors.white60),
                          ),
                        ),
                      ),
                      TextField(
                        controller: passController,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            // errorText:
                            //     validate ? 'Password Can\'t Be Empty' : null,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white70)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: color().amberAccent,
                            )),
                            hintText: '************',
                            hintStyle: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            )),
                            filled: true,
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white60,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                })),
                        style: TextStyle(color: Colors.white54),
                        cursorColor: Colors.white24,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextButton(
                    onPressed: () {
                      showGeneralDialog(
                        context: context,
                        barrierColor: Colors.black54,
                        barrierLabel: '',
                        barrierDismissible: true,
                        pageBuilder: (_, __, ___) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 40, right: 15),
                            child: Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 300,
                                width: MediaQuery.of(context).size.width - 50,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: color().backgroundColor,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30, right: 20, bottom: 30),
                                        child: Text(
                                          'Please enter your email address\nto reset password! ',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.ubuntu(
                                              textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: color().amberAccent,
                                          )),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, bottom: 50),
                                        child: TextField(
                                          controller: passController,
                                          decoration: InputDecoration(
                                              // errorText:
                                              //     validate ? 'Password Can\'t Be Empty' : null,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Colors.white70)),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                color: color().amberAccent,
                                              )),
                                              hintText: 'Enter Email',
                                              hintStyle: GoogleFonts.ubuntu(
                                                  textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                              )),
                                              filled: true,
                                              suffixIcon: IconButton(
                                                  icon: Icon(
                                                    Icons.email,
                                                    color: Colors.white60,
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      _isObscure = !_isObscure;
                                                    });
                                                  })),
                                          style:
                                              TextStyle(color: Colors.white54),
                                          cursorColor: Colors.white24,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: 120,
                                          child: OutlinedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                LocaleText(
                                                  'send',
                                                  style: GoogleFonts.ubuntu(
                                                    textStyle: TextStyle(
                                                        color: color()
                                                            .appBackGroundColor,
                                                        fontSize: 19),
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.send,
                                                  color: color()
                                                      .appBackGroundColor,
                                                ),
                                              ],
                                            ),
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor:
                                                    color().amberAccent,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                ),
                                                elevation: 3,
                                                padding: EdgeInsets.all(10)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: LocaleText(
                      "forgotpassword",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          color: color().amberAccent,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextButton(
                    onPressed: () async {
                      // setState(() {
                      //   emailController.text.isEmpty
                      //       ? validate = true
                      //       : validate = false;
                      //   passController.text.isEmpty
                      //       ? validate = true
                      //       : validate = false;
                      // });
                      // await firebaseServices().userlogin_1(
                      //     context, emailController.text, passController.text);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => homeScreen()));
                    },
                    child: LocaleText(
                      'login',
                      style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: color().amberAccent,
                      )),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23.0),
                      ),
                      elevation: 5,
                      backgroundColor: color().backgroundColor,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          LocaleNotifier.of(context)?.change('en');
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            width: 80,
                            padding: EdgeInsets.all(10),
                            child: Image.asset('icons/flags/png/gb.png',
                                package: 'country_icons'),
                          ),
                          Text(
                            'ENG',
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: color().TextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          LocaleNotifier.of(context)?.change('fr');
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 90,
                            padding: EdgeInsets.all(10),
                            child: Image.asset('icons/flags/png/fr.png',
                                package: 'country_icons'),
                          ),
                          Text(
                            'FRA',
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: color().TextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          LocaleNotifier.of(context)?.change('it');
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 90,
                            padding: EdgeInsets.all(10),
                            child: Image.asset('icons/flags/png/it.png',
                                package: 'country_icons'),
                          ),
                          Text(
                            'ITA',
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: color().TextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LocaleText(
                      'donthaveanaccount',
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          color: color().TextColor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => register()));
                      },
                      child: LocaleText(
                        "register",
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            color: color().amberAccent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


//  Container(
//               width: 150,
//               height: 50,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black38,
//                     offset: Offset(1.0, 1), //(x,y)
//                     blurRadius: 6.0,
//                   ),
//                 ],
//                 color: color().amberAccent,
//                 shape: BoxShape.rectangle,
//               ),
//               child: TextButton(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       dropdownvalue,
//                       style: GoogleFonts.ubuntu(
//                         textStyle: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           decoration: TextDecoration.none,
//                           color: color().appBackGroundColor,
//                         ),
//                       ),
//                     ),
//                     Icon(
//                       Icons.arrow_drop_down,
//                       color: color().appBackGroundColor,
//                     ),
//                   ],
//                 ),
//                 onPressed: () {
//                   showGeneralDialog(
//                     context: context,
//                     barrierColor: Colors.black54,
//                     barrierDismissible: true,
//                     barrierLabel: 'Label',
//                     pageBuilder: (_, __, ___) {
//                       return Padding(
//                         padding: const EdgeInsets.only(top: 40, right: 15),
//                         child: Align(
//                           alignment: Alignment.topRight,
//                           child: Container(
//                               width: 180,
//                               height: 200,
//                               decoration: BoxDecoration(
//                                   color: color().appBackGroundColor,
//                                   borderRadius: BorderRadius.circular(22)),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.only(left: 25, top: 5),
//                                     child: GestureDetector(
//                                       onTap: () {
//                                         setState(() {
//                                           LocaleNotifier.of(context)
//                                               ?.change('en');
//                                           Navigator.pop(context);
//                                           dropdownvalue = ' ENGLISH';
//                                         });
//                                       },
//                                       child: Row(
//                                         children: [
//                                           Text(
//                                             'ENGLISH',
//                                             style: GoogleFonts.ubuntu(
//                                               textStyle: TextStyle(
//                                                 fontSize: 16,
//                                                 fontWeight: FontWeight.w400,
//                                                 decoration: TextDecoration.none,
//                                                 color: color().TextColor,
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                               padding:
//                                                   EdgeInsets.only(left: 17),
//                                               height: 50,
//                                               width: 50,
//                                               child: Image.asset(
//                                                   'icons/flags/png/gb.png',
//                                                   package: 'country_icons')),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.only(left: 25, top: 5),
//                                     child: GestureDetector(
//                                       onTap: () {
//                                         setState(() {
//                                           LocaleNotifier.of(context)
//                                               ?.change('fr');
//                                           Navigator.pop(context);
//                                           dropdownvalue = ' FRENCH';
//                                         });
//                                       },
//                                       child: Row(
//                                         children: [
//                                           Text(
//                                             'FRENCH',
//                                             style: GoogleFonts.ubuntu(
//                                               textStyle: TextStyle(
//                                                 fontSize: 16,
//                                                 fontWeight: FontWeight.w400,
//                                                 decoration: TextDecoration.none,
//                                                 color: color().TextColor,
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                               padding:
//                                                   EdgeInsets.only(left: 17),
//                                               height: 50,
//                                               width: 50,
//                                               child: Image.asset(
//                                                   'icons/flags/png/fr.png',
//                                                   package: 'country_icons')),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.only(left: 25, top: 5),
//                                     child: GestureDetector(
//                                       onTap: () {
//                                         setState(() {
//                                           LocaleNotifier.of(context)
//                                               ?.change('it');
//                                           Navigator.pop(context);
//                                           dropdownvalue = ' ITALIAN';
//                                         });
//                                       },
//                                       child: Row(
//                                         children: [
//                                           Text(
//                                             'ITALIAN',
//                                             style: GoogleFonts.ubuntu(
//                                               textStyle: TextStyle(
//                                                 fontSize: 16,
//                                                 fontWeight: FontWeight.w400,
//                                                 decoration: TextDecoration.none,
//                                                 color: color().TextColor,
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                               padding:
//                                                   EdgeInsets.only(left: 17),
//                                               height: 50,
//                                               width: 50,
//                                               child: Image.asset(
//                                                   'icons/flags/png/it.png',
//                                                   package: 'country_icons')),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               )),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),