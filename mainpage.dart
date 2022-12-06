import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'login.dart';

class MainPage extends StatefulWidget {
  static const String id = 'main_page';
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
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
