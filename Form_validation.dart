import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Form validation in flutter",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                      child: Text("Name",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  Container(
                    child:  TextFormField(
                      controller: name,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "please enter your name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty)
                          {
                              return "please enter your name";
                          }
                        return null;
                      },
                    ),
                  ),
                  // Region for email
                  SizedBox(height: 20),
                  Container(
                    child: Text("Email",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                  Container(
                    child:  TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "please enter your email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty)
                        {
                          return "please enter your email";
                        }
                        if(!value.contains("@"))
                          {
                            return "Invalid email";
                          }
                        return null;
                      },
                    ),
                  ),
                  //Region for phone number
                  SizedBox(height: 20),
                  Container(
                    child: Text("Phone Number",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                  Container(
                    child:  TextFormField(
                      controller: phone,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "please enter phone number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty)
                        {
                          return "please enter your phone number";
                        }
                        if(value.length != 11) {
                          return "Phone Number Must be 11 digits";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text("Password",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                  Container(
                    child:  TextFormField(
                      controller: password,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "please enter your password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty)
                        {
                          return "please enter your password";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                         ElevatedButton(onPressed: ()
                        {
                          if(formKey.currentState!.validate()) {
                            print("Name ${name.text}");
                             print("Eamil ${email.text}");
                             print("Phone ${phone.text}");
                             print("Pawword ${password.text}");
                          }
                        },
                           child: Text("Submit",
                         style: TextStyle(
                           color: Colors.white
                         ),
                         ),
                           style: ButtonStyle(
                             backgroundColor: WidgetStateProperty.all(Colors.green),
                           ),
                        ),
                      ElevatedButton(
                        onPressed: () {
                          name.clear();
                          email.clear();
                          phone.clear();
                          password.clear();
                      },
                        child: Text("Cancel",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.red),
                        ),

                      )
                  ]
              ),
          ]
            ),
          ),
        ),
      ),
    );
  }
}
