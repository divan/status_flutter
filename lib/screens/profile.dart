import 'package:flutter/material.dart';

import '../screens/welcome.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('assets/avatar_demo.png', width: 60.0),
            Text(
              'Square Blueviolet Amazondolpin',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFECEEFB),
                borderRadius: BorderRadius.circular(8),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Share my profile",
                  style: TextStyle(
                    color: Color(0xFF4662CF),
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                _buildMenuItem(title: 'ENS names'),
                _buildMenuItem(title: 'Main currency', subtitle: 'USD'),
                _buildMenuItem(title: 'Notifications'),
                _buildMenuItem(title: 'Need help?'),
                _buildMenuItem(title: 'About'),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen()));
                  },
                  textColor: Colors.red,
                  child: Text(
                    'Log out',
                    style: TextStyle(fontSize: 22.0),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFECEEFB),
                borderRadius: BorderRadius.circular(25),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Advanced",
                  style: TextStyle(
                    color: Color(0xFF4662CF),
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({String title, String subtitle = ''}) {
    return ListTile(
      onTap: () {},
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: Colors.black87, fontSize: 22.0),
          ),
          subtitle != ''
              ? Text(
                  subtitle,
                  style: TextStyle(color: Colors.black38, fontSize: 22.0),
                )
              : Container(),
        ],
      ),
      trailing: Icon(Icons.navigate_next, color: Colors.black54, size: 36.0),
    );
  }
}
