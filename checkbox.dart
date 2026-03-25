import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? value = false; // Initialize as nullable bool for null safety

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Box Implementation'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ),
      ),
      body: Center(
            child: SizedBox(
              width: 400,
              height: 700,
              child: Column(
                children: [
                  Text(
                    'Algorithms',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 10),
                      const Text(
                        'Library Implementation Of Searching Algorithm: ',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      const SizedBox(width: 10),
                      Checkbox(
                        tristate: false, // Example with tristate
                        value: value,
                        onChanged: (bool? newValue) {
                          setState(() {
                            value = newValue;
                          });
                        },
                      ),

                    ],
                  ),
                  Text('$value',
                    style: const TextStyle(fontSize: 17.0),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}