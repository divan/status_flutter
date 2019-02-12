import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: SizedBox(
                    width: 150.0, child: Image.asset("assets/status_logo.png")),
              ),
              Text("Password", style: TextStyle(fontSize: 18)),
              TextField(
                controller: passwordController,
                maxLines: 1,
                obscureText: true,
                decoration: inputFieldDecoration('At least 6 characters'),
              ),
              Text(
                  "You'll need this password to open the app and confirm transactions",
                  style: TextStyle(fontSize: 17, color: Colors.grey)),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Next',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration inputFieldDecoration(String hint) {
    return InputDecoration(
      fillColor: Color(0xFFECF1F3),
      filled: true,
      hintMaxLines: 2,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Color(0xFFECF1F3)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Color(0xFFECF1F3)),
      ),
      hintText: hint,
    );
  }
}
