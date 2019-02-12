import 'package:flutter/material.dart';

import '../screens/login.dart';
import '../screens/restore_account.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                    width: 200.0, child: Image.asset("assets/status_logo.png")),
                Text(
                  'Status is your gateway to the decentralized web',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'A community-powered platform to securely chat and transact on the Ethereum blockchain',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFECEEFB),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Create account",
                        style: TextStyle(
                          color: Color(0xFF4662CF),
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RestoreAccountScreen()),
                    );
                  },
                  child: Text(
                    "I already have an account",
                    style: TextStyle(
                      color: Color(0xFF4662CF),
                      fontSize: 22,
                    ),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '''By continuing you agree to our ''',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      new TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF4662CF),
                        ),
                        // TODO: add url_lanucher
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
