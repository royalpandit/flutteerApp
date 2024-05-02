import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.yellow,
            child: SingleChildScrollView(
              child: Container(
                color: Colors.green,
                height: height * 1,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(40),
               
                   
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        width: height * 0.3,
                        height: height * 0.3,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,borderRadius: BorderRadius.circular(150)),
                            child: Image(image: AssetImage("assets/images/demodemo.jpeg")
                            ,fit: BoxFit.cover,),
                            
                        
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      height: height * 0.2,

                      
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
