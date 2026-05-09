import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int index = 0;
   List<String> items = ["Home", "Search", "Settings"];
   List<Widget> myWidgets = [
     Text("This is home"),
     Text("This is Search"),
     Text("This is Settings"),


   ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(items[index],
        style: TextStyle(fontSize: 30,
        color: Colors.white,
        ),
        ),
        centerTitle: true,
      ),
      body: Center(child: Container(
          child: myWidgets[index],
        decoration: BoxDecoration(

        ),
      )

      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value)
          {
            setState(() {
              index = value;
            });
            print(index);
          },
          items: [
            BottomNavigationBarItem(
              label: "Home",
                icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(Icons.settings),
            )
      ]
      ),
    );
  }
}
