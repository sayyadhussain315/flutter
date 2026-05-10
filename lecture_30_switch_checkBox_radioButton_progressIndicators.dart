import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  bool iscon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Important Widgets",
        style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          spacing: 55,
          children: <Widget>[
            Switch( value: iscon,
              onChanged: (value) {
               setState(() {
                iscon = value;
              });
              },
            ),
            SwitchListTile(
            value: iscon,
            onChanged: (value) {
              setState(() {
                iscon = value;
              });
            },
            title: Text("Switch List Tile: "),
            subtitle: Text("Switch List Tile Sub Title: "),


            ),


            Checkbox(value: iscon,
            onChanged:(value)
            {
              setState(() {
                iscon = value!;
              });
            },
            ),
          ]
        ),
      ),
    );
  }
}
