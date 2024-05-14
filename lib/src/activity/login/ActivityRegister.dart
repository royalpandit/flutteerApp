import 'package:flutter/material.dart';

class ActivityRegister extends StatefulWidget {
  const ActivityRegister({super.key});

  State<ActivityRegister> createState() => _ActivityRegister();
}

class _ActivityRegister extends State<ActivityRegister> {
  onPressSubmit(context) {
    print("first Name");
    print("Last Name");
    print("Email");
    print("Password");
    print("City");
    print("State");
    print("Mobile");
  }

  onPressBack(context) {
    Navigator.pop(context);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 21, 50, 215),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => onPressBack(context),
              icon:  Image.asset("assets/images/kbr.png")),
          title: Text("Register"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white),
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
                    child: Image(image: AssetImage("assets/images/kbr.png")),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0)),
                      labelText: "Enter First Name",
                      hintText: "Enter First Name",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0)),
                      labelText: "Enter Last Name",
                      hintText: "Enter Last Name",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0)),
                      labelText: "Enter Email",
                      hintText: "Enter Email",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0)),
                      labelText: "Enter Password",
                      hintText: "Enter Password",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0)),
                      labelText: "Enter Mobile Number",
                      hintText: "Enter Mobile Number",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0)),
                      labelText: "Enter Pin Code",
                      hintText: "Enter Pin Code",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0)),
                      labelText: "Enter Countary",
                      hintText: "Enter Countary",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                    onPressed: () => onPressSubmit(context),
                    child: Text("Submit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
