import 'package:flutter/material.dart';
import 'dart:math';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            color: Color(0xFF4260DC),
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white30,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: '~'),
                        TextSpan(
                            text: '14.44',
                            style: TextStyle(color: Colors.white)),
                        TextSpan(text: ''' USD'''),
                      ],
                    ),
                  ),
                ),
                _buildMenuItem(
                    'Send',
                    Transform.rotate(
                      angle: -pi / 4,
                      child: Icon(Icons.arrow_forward,
                          color: Colors.white, size: 22.0),
                    )),
                _buildMenuItem(
                    'Deposit',
                    Transform.rotate(
                      angle: pi - pi / 4,
                      child: Icon(Icons.arrow_forward,
                          color: Colors.white, size: 22.0),
                    )),
                _buildMenuItem(
                  'Transaction history',
                  Icon(Icons.receipt, color: Colors.white, size: 22.0),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Assets",
                  style: TextStyle(color: Colors.grey, fontSize: 18.0),
                  textAlign: TextAlign.start,
                ),
                _buildAssetItem('0.0000076352', 'ETH', '0.00'),
                _buildAssetItem('625', 'SNT', '14.43'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile _buildMenuItem(String text, Widget icon) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 22.0),
      ),
      leading: SizedBox(
        height: 36.0,
        width: 36.0,
        child: RawMaterialButton(
          onPressed: () {},
          child: icon,
          shape: CircleBorder(),
          elevation: 0,
          fillColor: Color(0xFF5470DD),
        ),
      ),
      trailing: Icon(Icons.navigate_next, color: Colors.white, size: 36.0),
    );
  }

  ListTile _buildAssetItem(String text, token, value) {
    Image image;
    switch (token) {
      case 'SNT':
        image = Image.asset('assets/tokens/snt.png');
        break;
      case 'ETH':
        image = Image.asset('assets/tokens/eth.png');
        break;
    }
    return ListTile(
      title: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
          Text(
            ' ' + token,
            style: TextStyle(color: Colors.grey, fontSize: 20.0),
          ),
        ],
      ),
      leading: SizedBox(
        height: 36.0,
        width: 36.0,
        child: image,
      ),
      trailing: Text(
        '\$$value',
        style: TextStyle(color: Colors.grey, fontSize: 20.0),
      ),
    );
  }
}
