import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;
  void IncrementCounter() {
    setState(() {
      _count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count: $_count", style: TextStyle(fontSize: 32)),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: Size(120, 10),
                ),
                onPressed: () {
                  IncrementCounter();
                },
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
