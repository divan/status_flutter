import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Spacer(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Profile',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 22.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
