import "package:flutter/material.dart";
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  String TextEntered = " ";
  String text = "No Value Entered";
  void _setText() {
    setState(() {
      text = TextEntered;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Note App"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              onChanged: (value) {
                TextEntered = value;
              }
            ),
          ),
          const SizedBox(height: 8),

          Container(
           /// alignment: Alignment.topLeft,
            child: ElevatedButton(

              onPressed: _setText,
              style: ButtonStyle(
                //elevation: WidgetStateProperty.all(8),
                backgroundColor: WidgetStateProperty.all(Colors.blue),
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
              child: const Text('Submit'),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 200,
            width: double.infinity,
            alignment: Alignment.topLeft,
             margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 2),
          ),
            child: Text( text,
              // textAlign: TextAlign.start,
              style: TextStyle(fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
              ),
            ),
          ),
          //Text(text),
        ],
      ),
    );
  }
}
