import 'package:flutter/material.dart';

class RestoreAccountScreen extends StatefulWidget {
  @override
  _RestoreAccountScreenState createState() => _RestoreAccountScreenState();
}

class _RestoreAccountScreenState extends State<RestoreAccountScreen> {
  final mnemonicsController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Sign in to another account',
            style: TextStyle(color: Colors.black),
          ),
          leading: FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Recovery phrase", style: TextStyle(fontSize: 18)),
              TextField(
                controller: mnemonicsController,
                decoration: inputFieldDecoration(
                    'Enter the 12 words of your recovery phrase, separated by spaces'),
              ),
              Text("Password", style: TextStyle(fontSize: 18)),
              TextField(
                controller: passwordController,
                maxLines: 1,
                obscureText: true,
                decoration: inputFieldDecoration('Enter password'),
              ),
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
                      MaterialPageRoute(
                          builder: (context) => RestoreAccountScreen()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Sign in',
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
