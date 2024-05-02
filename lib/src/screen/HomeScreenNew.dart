import 'package:flutter/material.dart';

class HomeScreenNew extends StatelessWidget {
  const HomeScreenNew({super.key});

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var weight = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Login Screen"),
        actions: [Icon(Icons.help_sharp)],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Column(
          children: [
            Container(height: height * .1, color: Colors.brown),
            Container(
              height: height * .785,
              color: const Color.fromARGB(96, 198, 18, 18),
              //Scroll View Code Start
              child: SingleChildScrollView( 
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      color: Color.fromARGB(255, 9, 250, 226),
                    ),
                    Container(
                      height: 400,
                      color: Colors.deepPurple,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 300,
                              width: 200,
                              color: Colors.blueGrey,
                            ),
                            Container(
                              height: 200,
                              width: 150,
                              color: Colors.blueAccent,
                            ),
                            Container(
                              height: 200,
                              width: 150,
                              color: Colors.cyanAccent,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 400,
                      color: Colors.blueGrey,
                    ),
                    Container(
                      height: 400,
                      color: Colors.purpleAccent,
                    ),
                    Container(
                      height: 400,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      color: Colors.deepPurple,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
