import 'package:flutter/material.dart';

import 'package:email_passwort_login/screens/login_screen.dart';
import 'package:email_passwort_login/screens/registration_screen.dart';

import 'package:fluttertoast/fluttertoast.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.cyanAccent,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegistrationScreen()));
        },
        child: const Text(
          "Registrieren",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

final registrationButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.cyanAccent,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        child: const Text(
          "Einloggen",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );



    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 200,
                        child: Image.asset(
                          "assets/logo.png",
                          fit: BoxFit.contain,
                        )),
                    
                    const SizedBox(height: 35),
                    loginButton,
                    const SizedBox(height: 35),
                    registrationButton,
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}