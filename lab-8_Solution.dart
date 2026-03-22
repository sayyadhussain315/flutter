import 'dart:ffi';

import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
            'BMI Calculator',
              style: TextStyle(
              color: Colors.white,
              ),
            ),
          ),
              backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Column(

            children: [

              Row(
                children: [
                  Expanded(
                    child: Container(

                      margin: const EdgeInsets.all(20),
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        color: Colors.deepPurple,
                      ),
                      child: Text('Top-1',
                      style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Container(

                      margin: const EdgeInsets.all(20),
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        color: Colors.deepPurple,
                      ),
                      child: Text('Top-2',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                  )
                ],
              ),


              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        color: Colors.green,
                      ),
                      child: Text('Centre',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        color: Colors.orangeAccent,
                      ),
                      child: Text('Bottom-1',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        color: Colors.orangeAccent,
                      ),
                      child: Text('Bottom-2',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                  ),
                ],
              )


              ],
          ),
        ),
      ),
    );
  }
}
