

import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String tabText = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Gestures Detection",
          style: TextStyle(
            fontSize: 27,
            color: Colors.white
          ),
          ),
        ),
        body: Column(
          children: [
            Center(
                  child: GestureDetector(
                    onDoubleTap: ()
                    {
                      setState(() {
                        tabText = "Double";
                      });
                    },
                    child: Text("Kindly press me",
                    style: TextStyle(
                      fontSize: 25
                    ),
                            ),
                  ),
                  ),
            Container(
            child: Text('you have $tabText'),
            )
          ],
        ),
      ),
    );
  }
}
