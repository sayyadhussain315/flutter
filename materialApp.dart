import 'package:flutter/material.dart';
void main() {
  runApp(const GFGapp());
}
class GFGapp extends StatelessWidget {
  const GFGapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeeksforGeeks',
      // Theme of the application
      theme: ThemeData(primarySwatch: Colors.green),
      // Dark theme of the application
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      // Color of the application
      color: Colors.amberAccent,
      // Supported locales for the application
      supportedLocales: {const Locale('en', ' ')},
      // Disable the debug banner
      debugShowCheckedModeBanner: false,

      // Home screen of the application
      home: Scaffold(
        appBar: AppBar(
          // Title of the app bar
          title: const Text('GeeksforGeeks'),
          // Background color of the app bar
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}