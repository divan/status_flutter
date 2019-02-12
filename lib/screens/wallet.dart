import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
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
              'Wallet',
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
