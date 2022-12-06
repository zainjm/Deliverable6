import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

late User loggedInUser;

class SignUp extends StatefulWidget {
  static const String id = 'sign_up';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

//We start from main page.. upon successful sign-up and log-in we should go to the same page
// Basically whatever is below is this comment should have a separate page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Show Dashboard'),
        ),
      ),
    );
  }
}
