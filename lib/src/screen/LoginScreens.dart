import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  State<LoginScreens> createState() => LoginScreenMain();
}

class LoginScreenMain extends State<LoginScreens> {
  onPressText(context) {
    print(email.text);
    print(password.text);
    print("login once");
    
  }

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Kalyan Bazar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 100,
                    child:
                        Image(image: AssetImage("assets/images/demodemo.jpeg")),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Please Enter a user name",
                      hintText: "Please Enter a User name",
                      labelStyle: TextStyle(color: Colors.deepPurple),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Please enter password",
                      hintText: "please Enter 6 digit password",
                      labelStyle: TextStyle(
                          color: Colors.blue, fontSize: 16, letterSpacing: 0.2),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 65,
                width: 360,
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                     child: TextButton(
                  onPressed: () => onPressText(context),
                  child: Text("Click Button one"),
                ),
                    // child: ElevatedButton(
                    //   onPressed: () => onPressText(context),
                    //   child: Text(
                    //     'Login Demo',
                    //     style: TextStyle(
                    //         color: Colors.pink, backgroundColor: Colors.yellow),
                    //   ),
                    // ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextButton(
                    onPressed: () => onPressText(context),
                    child: Text("Login")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
