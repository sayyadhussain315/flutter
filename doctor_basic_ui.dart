import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Doctors",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: Column(
            children: [
              BodyWidget(),
              BodyWidget(),
              BodyWidget(),
              BodyWidget()
            ]
             )
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                //border: Border.all(width: 3),
                color: Color(0x21333333)
            ),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 200,
                  //margin: EdgeInsets.all(20),
                  //padding: EdgeInsets.all(20),
                  child: Image(
                      image: AssetImage('assets/images/ali.jpeg'
                      )
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Ali",
                        style: TextStyle(
                          fontSize: 20,
                          )
                        ),
                      Text("ENT",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text("Phase 2 Bahria Town",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text("Fee: 2000",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
