import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  bool iscon = false;
  String? groupValue = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Important Widgets",
        style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           //  Switch( value: iscon,
           //    onChanged: (value) {
           //     setState(() {
           //      iscon = value;
           //    });
           //    },
           //  ),
           //  SwitchListTile(
           //  value: iscon,
           //  onChanged: (value) {
           //    setState(() {
           //      iscon = value;
           //    });
           //  },
           //  title: Text("Switch List Tile: "),
           //  subtitle: Text("Switch List Tile Sub Title: "),
           //  ),
           //
           //
           //  Checkbox(value: iscon,
           //  onChanged:(value)
           //  {
           //    setState(() {
           //      iscon = value!;
           //    });
           //  },
           //  ),
           //
           //  CheckboxListTile(value: iscon,
           //    onChanged:(value)
           //    {
           //      setState(() {
           //        iscon = value!;
           //      });
           //    },
           //
           //    title: Text("Check box List Tile"),
           //  ),
           // RadioMenuButton(value: 'one',
           //     groupValue: groupValue,
           //     onChanged: (value)
           //     {
           //       setState(() {
           //         groupValue = value;
           //         print(groupValue);
           //       });
           //     },
           //     child: Text("One")
           // ),
           //  RadioMenuButton(value: 'two',
           //      groupValue: groupValue,
           //      onChanged: (value)
           //      {
           //        setState(() {
           //          groupValue = value;
           //          print(groupValue);
           //        });
           //      },
           //      child: Text("Two")
           //  ),
            CircularProgressIndicator(
              value: 0.7,

            ),
            SizedBox(height: 10,),
            LinearProgressIndicator(
              value: 0.7,
            )
          ]
        ),
      ),
    );
  }
}
