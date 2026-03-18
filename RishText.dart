import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RichText',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePAGE(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePAGE extends StatefulWidget {
  const MyHomePAGE({Key? key}) : super(key: key);
  @override
  _MyHomePAGEState createState() => _MyHomePAGEState();
}
class _MyHomePAGEState extends State<MyHomePAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mr Flutter Expert'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,),
      body: Center(
          child: RichText(
            overflow: TextOverflow.clip,
            textAlign: TextAlign.end,
            textDirection: TextDirection.rtl,
            softWrap: true,
            textScaler: TextScaler.linear(1),
            maxLines: 1,
            text: TextSpan(
              text: 'Hello ',
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                    text: 'Geeks', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          )),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}