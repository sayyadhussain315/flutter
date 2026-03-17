import 'package:flutter/material.dart';

// Entry point of the application
void main() => runApp(const MyApp());

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Disable the debug banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // App bar with a title
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Container in example",
            style: TextStyle(color: Colors.white),
          ),
        ),
        // Body of the scaffold with a container
        body: Container(
          // Height of the container
          height: 200,
          // Width of the container
          width: double.infinity,
          // Alignment of the container
          alignment: Alignment.center,
          // Margin of the container
          margin: const EdgeInsets.all(30),
          // Padding of the container
          padding: const EdgeInsets.all(30),
          // Removed the color property from here to avoid assertion error
          // color: Colors.green,
          decoration: BoxDecoration(
            // Use color here when using the decoration property
            color: Colors.green,
            // Add rounded corners
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 3),
          ),
          child: const Text(
            "Hello! I am inside in a container!",
            style: TextStyle(fontSize: 20,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}