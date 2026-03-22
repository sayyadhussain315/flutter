// 1.	Create a contact-card app that shows your contact details as given in following figure.
// The components and requirements of this app are given below.
// a.	Include safe area
// b.	Grey background
// c.	Contain a circular avatar with an image, and 50 radius.
// d.	Your name with following style guidelines
// i.	Font ZenKurenaido (custom Google font)
// ii.	Bold
// iii.	White Color
// iv.	Font size 30
// e.	Your Designation with following style guidelines
// i.	Font Lato (custom Google font)
// ii.	Bold
// iii.	White Color
// iv.	Font size 20
// v.	Letter spacing 3
// f.	Phone icon and contact number with green color, white background, padding, and margin
// g.	Email icon and email with green color, white background, padding, and margin
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
        backgroundColor: Colors.teal,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                ),
                SizedBox(height: 20,),
                Text("+92-300-0000000",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )

                ),
                SizedBox(height: 20,),
                Text("sayyadhussain00000@gmail.com",
                    style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}







