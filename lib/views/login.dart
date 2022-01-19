import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mqtt_project/Services/firebaseServices.dart';
import 'package:mqtt_project/views/register.dart';
import 'color.dart';

class login extends StatefulWidget {
  @override
  loginState createState() => loginState();
}

class loginState extends State<login> {
  bool _isObscure = true;

  final emailController = TextEditingController();
  final passController = TextEditingController();

  //bool validate = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 110),
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          color: color().appBackGroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                //
                'Login here',
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
                        padding: EdgeInsets.only(bottom: 15),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              // errorText:
                              //     validate ? 'Email Can\'t Be Empty' : null,
                              fillColor: Colors.transparent,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: color().TextColor,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: color().amberAccent,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              filled: true,
                              hintText: 'Enter username',
                              hintStyle: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: color().TextColor,
                                ),
                              ),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.person,
                                    color: color().TextColor,
                                  ),
                                  onPressed: () {})),
                          style: TextStyle(
                            color: color().TextColor,
                          ),
                          cursorColor: color().TextColor,
                        ),
                      ),
                      TextField(
                        controller: passController,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            // errorText:
                            //     validate ? 'Password Can\'t Be Empty' : null,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: color().TextColor,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: color().amberAccent,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            hintText: '***********',
                            hintStyle: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: color().TextColor,
                              ),
                            ),
                            filled: true,
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: color().TextColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                })),
                        style: TextStyle(
                          color: color().TextColor,
                        ),
                        cursorColor: color().TextColor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => register()));
                    },
                    child: Text(
                      "Forget Password?",
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
                      // await firebaseServices().userlogin(
                      //     context, emailController.text, passController.text);

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => register()));
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: color().TextColor,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont Have An Account?',
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
                      child: Text(
                        "Register!",
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
