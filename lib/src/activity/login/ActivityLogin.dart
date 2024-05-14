import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hells/src/activity/login/ActivityRegister.dart';
import 'package:hells/src/activity/login/HomeDashBoard.dart';
import 'package:hells/src/activity/login/Mpin.dart';
import 'package:hells/src/screen/ListScreen.dart';

class ActivityLogin extends StatefulWidget {
  const ActivityLogin({super.key});

  @override
  State<ActivityLogin> createState() => MainLogin();
}

class MainLogin extends State<ActivityLogin> {
  onPressButton(context) {
    if (email.text.isEmpty) {
      print("please enter Email");
    } else if (Password.text.isEmpty) {
      print("please enter password");
    }else{


   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListScreen()));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mpin()));
    }

    print(email.text);
    print(Password.text);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => ListScreen(),
    //   ),
    // // );

    // Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (context) => ListScreen()));
  }

  onPressButtonRegister(context) {
  //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityRegister()));

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListScreen()));
  }

  onPressButtonSlider(context) {
  //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityRegister()));

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeDashboard()));
  }

  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {


      
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 21, 50, 215),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Login Screen"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          backgroundColor: Color.fromARGB(255, 21, 50, 215),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                
                padding: EdgeInsets.only(top: 40.0),
                child: Center(
                  
                  child: Container(
                    
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: Image(
                      image: AssetImage("assets/images/kbr.png"),
                      fit: BoxFit.contain,
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: email,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 248, 248, 248),
                              width: 2.0)),
                      labelText: "Enter UserName ",
                      hintText: "Enter UserName",
                      fillColor: Colors.blue,
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: Password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 254, 254, 254),
                              width: 2.0)),
                      labelText: "Enter Password",
                      hintText: "Enter Password",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                    onPressed: () => onPressButton(context),
                    child: Text("Login")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                    onPressed: () => onPressButtonRegister(context),
                    child: Text("Register")),
              ),
               Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                    onPressed: () => onPressButtonSlider(context),
                    child: Text("Slider")),
              ),
            ],
          ),
        ),
      );
    }));
  }
}
