import 'package:flutter/material.dart';

class HomeScreenDemo extends StatelessWidget {
  const HomeScreenDemo({super.key});

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
   // var width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.backspace),
          title: Text("Test Screen"),
          actions: [Icon(Icons.search)],
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.yellowAccent),
          child: Column(
            children: [
              Container(
                height: height * .1,
                color: Color.fromARGB(255, 27, 6, 187),
              ),
              Container(
                height: height * .786,
                color: Colors.purpleAccent,
                // Vertical Scroll View Code Start
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                  height: 200,
                                  width: 150,
                                  color: Colors.deepOrangeAccent,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text("1"),
                                      ),
                                      Container(
                                        child: Icon(Icons.help_outline),
                                      )
                                    ],
                                  )),
                              Container(
                                height: 200,
                                width: 150,
                                color: Colors.black,
                              ),
                              Container(
                                height: 200,
                                width: 150,
                                color: Colors.yellowAccent,
                              ),
                              Container(
                                height: 200,
                                width: 150,
                                color: Colors.brown,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Color.fromARGB(255, 181, 167, 63),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                color: Colors.black,
                              ),
                              Container(
                                height: 120,
                                width: 120,
                                color: Colors.brown,
                              ),
                              Container(
                                height: 120,
                                width: 120,
                                color: Colors.purpleAccent,
                              ),
                              Container(
                                height: 120,
                                width: 120,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.tealAccent,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 20,
                                color: Colors.cyan,
                              ),
                              Container(
                                height: 100,
                                width: 20,
                                color: Colors.cyanAccent,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.red,
                      ),
                      Container(
                        height: 200,
                        color: const Color.fromARGB(255, 125, 3, 3),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
