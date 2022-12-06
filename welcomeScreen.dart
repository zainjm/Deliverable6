import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'signup.dart';
import 'login.dart';

class WelcomeScreen extends StatelessWidget {
  static const String _title = 'S&J Motors';
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
          appBar: AppBar(
              title: const Text(_title),
              centerTitle: true,
              backgroundColor: Colors.blueGrey),
          body: const MyStatefulWidget(),
          backgroundColor: Colors.white),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String email = '';
  String password = '';

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  onChanged: (value) {
                    email = value;
                  }),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                onChanged: (value) {
                  password = value;
                },
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('Sign-up'),
                  onPressed: () async {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);

                    if (newUser != null) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return SignUp();
                      }));
                    }
                  },
                )),
            Row(
              children: <Widget>[
                const Text('Existing user?'),
                TextButton(
                  child: const Text(
                    'Log-in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return LoginScreen();
                    }));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
