import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'GeeksforGeeks',
            style: TextStyle(
              color: Colors.white,
            ), // Text Style
          ), // Text
          backgroundColor: Colors.green,
          elevation: 20,
        ), // AppBar
        body: const DicePage(),
      ), // Scaffold
    ), // Material App
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(14),
              child: Image.asset('image/dicel.png'),
            ),
          ), // Expanded
        ], // <Widget>
      ), // Row
    ); // Center
  }
}