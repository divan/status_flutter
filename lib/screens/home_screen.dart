import 'package:flutter/material.dart';

import '../screens/chat.dart';
import '../screens/wallet.dart';
import '../screens/profile.dart';

class HomeScreen extends StatefulWidget {
  final List<Widget> _children;

  HomeScreen()
      : _children = [
          ChatPage(),
          WalletPage(),
          ProfilePage(),
        ];

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildAppBar(_currentIndex),
        body: widget._children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex:
              _currentIndex, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.adjust),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.credit_card),
              title: new Text('Wallet'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.tag_faces),
              title: new Text('Profile'),
            ),
          ],
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  AppBar buildAppBar(int index) {
    return AppBar(
      backgroundColor: index == 1 ? Color(0xFF4260DC) : Colors.white,
      elevation: 0,
      title: index == 0
          ? Center(
              child: SizedBox(
                  height: 70.0, child: Image.asset("assets/status_logo.png")),
            )
          : null,
      centerTitle: true,
      actions: <Widget>[
        index == 0
            ? IconButton(
                onPressed: () {},
                color: Colors.blue,
                icon: Icon(Icons.add),
              )
            : Container(),
        index == 1
            ? IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ))
            : Container(),
        index == 2
            ? FlatButton(
                onPressed: () {},
                child: Text("Edit", style: TextStyle(color: Colors.blue)))
            : Container(),
      ],
    );
  }
}
