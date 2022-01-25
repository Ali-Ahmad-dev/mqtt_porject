// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:mqtt_project/views/home.dart';

// class firebaseServices {
//   final firestore = FirebaseFirestore.instance;

//   FirebaseAuth _auth = FirebaseAuth.instance;
//   userSignUp(context, String email, String pass) async {
//     try {
//       await _auth
//           .createUserWithEmailAndPassword(email: email, password: pass)
//           .then((value) => Navigator.push(
//               context, MaterialPageRoute(builder: (context) => homeScreen())));
//     } on FirebaseAuthException catch (e) {
//       print(e.message);
//     }
//   }

// //
//   userlogin(context, String email, String pass) async {
//     try {
//       await _auth.signInWithEmailAndPassword(email: email, password: pass).then(
//           (value) => Navigator.push(
//               context, MaterialPageRoute(builder: (context) => homeScreen())));
//     } on FirebaseAuthException catch (e) {
//       print(e.message);
//     }
//   }

//   Future addUserResults(String userId, Map<String, dynamic> userInfo) async {
//     return firestore.collection("userInfo").doc().set(userInfo);
//   }

//   Future<Stream<QuerySnapshot>> getUserbyId(String userId) async {
//     return FirebaseFirestore.instance
//         .collection('users')
//         .where("userId", isEqualTo: userId)
//         .snapshots();
//   }
// }
