import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF228B22),
        centerTitle: true,
        title: Text("Al-Mu'minoon"),
      ),
      body: Center(
          child: MaterialButton(
        onPressed: () async {
          await FirebaseAuth.instance.signOut();
        },
        child: Text("Sign Out"),
      )),
    );
  }
}
