// import "package:flutter/material.dart";
// void main() => runApp(const MyApp());
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
//   }
// }
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//   @override
//   _HomeState createState() => _HomeState();
// }
// class _HomeState extends State<Home> {
//   String TextEntered = " ";
//   String text = "please enter the value";
//   void _setText() {
//     setState(() {
//       text = TextEntered;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  Text("Note App"),
//         backgroundColor: Colors.blue,
//         foregroundColor: Colors.white,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: TextField(
//               decoration: const InputDecoration(labelText: 'Title'),
//               onChanged: (value) {
//                 TextEntered = value;
//               }
//             ),
//           ),
//           const SizedBox(height: 8),

//           Container(
//            /// alignment: Alignment.topLeft,
//             child: ElevatedButton(

//               onPressed: _setText,
//               style: ButtonStyle(
//                 //elevation: WidgetStateProperty.all(8),
//                 backgroundColor: WidgetStateProperty.all(Colors.blue),
//                 foregroundColor: WidgetStateProperty.all(Colors.white),
//               ),
//               child: const Text('Submit'),
//             ),
//           ),
//           const SizedBox(height: 8),
//           Container(
//             height: 200,
//             width: double.infinity,
//             alignment: Alignment.topLeft,
//              margin: const EdgeInsets.all(8),
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//               //borderRadius: BorderRadius.circular(15),
//               border: Border.all(color: Colors.black, width: 2),
//           ),
//             child: Text( text,
//               // textAlign: TextAlign.start,
//               style: TextStyle(fontSize: 25,
//                   fontStyle: FontStyle.italic,
//                   color: Colors.black,
//               ),
//             ),
//           ),
//           //Text(text),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController desc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Input Field Tutorial",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            TextField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Please enter your email",
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.email),
                suffixIcon: IconButton(
                  onPressed: () {
                    email.clear();
                  },
                  icon: Icon(Icons.cancel),
                ),
              ),
            ),

            SizedBox(height: 10),

            TextField(
              controller: password,
              obscureText: true,
              keyboardType: TextInputType.number,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText: "Please enter your password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    password.clear();
                  },
                  icon: Icon(Icons.cancel),
                ),
              ),
            ),

            SizedBox(height: 10),

            TextField(
              controller: desc,
              maxLines: 7,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Please enter your description",
                labelText: "Description",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    desc.clear();
                  },
                  icon: Icon(Icons.cancel),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(email.text);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.green),
              ),
              child: const Text("Login",
              style: TextStyle(
                color: Colors.white
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
