import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
      ),
      body: ListView(
        children: [
          // Header
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('08.13'),
                Text('82'),
              ],
            ),
          ),
          // Divider
          Divider(),
          // Transaction list
          ..._transactionList(),
        ],
      ),
    );
  }

  List<Widget> _transactionList() {
    return List.generate(
      10,
      (index) => _transactionItem(index),
    );
  }

  Widget _transactionItem(int index) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Status
          _transactionStatus(index),
          // Amount
          _transactionAmount(index),
        ],
      ),
    );
  }

  Widget _transactionStatus(int index) {
    return Container(
      child: Row(
        children: [
          // Icon
          Icon(
            Icons.pending,
            color: Colors.orange,
          ),
          // Text
          Text(
            'Pending',
            style: TextStyle(
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }

  Widget _transactionAmount(int index) {
    return Container(
      child: Row(
        children: [
          // Text
          Text(
            'Rp. 10.000',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Qr code
          GestureDetector(
            onTap: () {
              // Do something when the qr code is tapped
            },
            child: Container(
              width: 50.0,
              height: 50.0,
              child: Image.asset('assets/qr_code.png'),
            ),
          ),
        ],
      ),
    );
  }
}
