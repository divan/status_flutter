import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
              'Your Home screen will house your recent chats and DApp history. Tap the plus (+) button to get started',
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
