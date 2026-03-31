import 'package:flutter/material.dart';

import 'package:untitled/models/doctor.dart';
import 'package:untitled/util/data_store.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var colorsArray = [
      Colors.red,
      Colors.orange,
      Colors.green,
      Colors.yellow,
      Colors.deepPurple,
      Colors.pinkAccent,
      Colors.blue,
      Colors.black,
      Colors.grey,
      Colors.teal

    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text("Grid View using colors",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32
          ),
          ),
        ),
      ),
      body: GridView.builder(

          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              color: colorsArray[index]
            ),
          );

          },

        itemCount: colorsArray.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 11,
          mainAxisSpacing: 11

        ),

      )
    );
  }
}

