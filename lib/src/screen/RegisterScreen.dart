import 'package:flutter/material.dart';
import 'package:hells/src/screen/HomeScreen.dart';
import 'package:hells/src/screen/ListScreen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  onPressButtonOne(context) {
    print("This is two");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
    //Navigator.push(context, MaterialPageRoute(builder: (context)=>ListScreen(),),);
  }

  onTabButton(context) {
    print("this is onTab Button");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ListScreen()));
  }

  onPressIconButton() {
    print("this is icon button");
  }

  onPressTextButon() {
    print("Text This one time");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Container(
          color: Colors.yellowAccent,
          child: Column(
            children: [
              Container(
                height: 100,
                color: Colors.redAccent,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                child: TextButton(
                    onPressed: () => onPressTextButon(),
                    child: Text("Click This")),
              ),
              Container(
                height: 100,
                color: Colors.greenAccent,
                child: TextButton(
                  onPressed: () => onPressButtonOne(context),
                  child: Text("Click Button one"),
                ),
              ),
              Container(
                height: 100,
                color: Colors.blueGrey,
                child: IconButton(
                    onPressed: onPressIconButton,
                    icon: Icon(Icons.access_alarm)),
              ),
              Container(
                height: 100,
                color: Colors.brown,
                child: InkWell(
                  child: Icon(Icons.baby_changing_station),
                  onTap: () => onTabButton(context),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
