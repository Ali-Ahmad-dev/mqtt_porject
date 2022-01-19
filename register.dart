import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mqtt_project/Services/firebaseServices.dart';
import 'package:mqtt_project/views/home.dart';
import 'color.dart';
import 'package:mqtt_project/views/login.dart';

class register extends StatefulWidget {
  @override
  registerState createState() => registerState();
}

class registerState extends State<register> {
  bool _isObscure = true;
  bool validate = false;
  // final _auth = FirebaseAuth.instance;
  final usermameController = TextEditingController();
  final passController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 15, right: 10, top: 110),
          decoration: BoxDecoration(
            // ignore: prefer_const_constructors
            color: color().appBackGroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                //
                'Register Here!',
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      color: Colors.amber),
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
                          child: Text(
                            'USERNAME',
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
                            controller: usermameController,
                            decoration: InputDecoration(
                                errorText: validate
                                    ? 'Username Can\'t Be Empty'
                                    : null,
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
                        Text(
                          'email',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Colors.white60),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                errorText:
                                    validate ? 'Email Can\'t Be Empty' : null,
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white70)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: color().amberAccent,
                                )),
                                fillColor: Colors.transparent,
                                filled: true,
                                hintText: 'abc@gmail.com',
                                hintStyle: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )),
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.email,
                                      color: Colors.white54,
                                    ),
                                    onPressed: () {})),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white24,
                          ),
                        ),
                        Text(
                          'phone',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Colors.white60),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: TextField(
                            controller: phoneController,
                            decoration: InputDecoration(
                                errorText:
                                    validate ? 'Phone Can\'t Be Empty' : null,
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white70)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: color().amberAccent,
                                )),
                                fillColor: Colors.transparent,
                                filled: true,
                                hintText: '+39123456789',
                                hintStyle: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )),
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.phone,
                                      color: Colors.white54,
                                    ),
                                    onPressed: () {})),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white24,
                          ),
                        ),
                        Text(
                          'PASSWORD',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                color: Colors.white60),
                          ),
                        ),
                        TextField(
                          controller: passController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                              errorText:
                                  validate ? 'Password Can\'t Be Empty' : null,
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white70)),
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
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: TextButton(
                      onPressed: () {
                        // var user = _auth.currentUser!.uid;
                        // Map<String, dynamic> userInf = {
                        //   'UserName': usermameController.text,
                        //   'email': emailController.text,
                        //   'phone': phoneController.text,
                        //   'userId': user,
                        // };

                        // firebaseServices().userSignUp(
                        //     context, emailController.text, passController.text);

                        // await firebaseServices().addUserResults(user, userInf);

                        // setState(() {
                        //   emailController.text.isEmpty
                        //       ? validate = true
                        //       : validate = false;
                        //   passController.text.isEmpty
                        //       ? validate = true
                        //       : validate = false;
                        //   phoneController.text.isEmpty
                        //       ? validate = true
                        //       : validate = false;
                        //   usermameController.text.isEmpty
                        //       ? validate = true
                        //       : validate = false;
                        // });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homeScreen()));
                      },
                      child: Text(
                        'Register',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                              color: Colors.amber),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(15),
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
                        'Already have An Account?',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login()));
                        },
                        child: Text(
                          "Login!",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                color: color().amberAccent),
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
      ),
    );
  }
}
