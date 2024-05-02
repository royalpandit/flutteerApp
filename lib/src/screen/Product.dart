import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  child: Image(
                                    image: AssetImage("assets/images/logo.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 27, 23, 7),
                                      borderRadius: BorderRadius.circular(15)),
                                  width: 200,
                                  height: 200,
                                ),
                                Container(
                                  child: Text(
                                    "Hellos",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: const Color.fromARGB(
                                            255, 176, 46, 46)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  width: 200,
                                  height: 200,
                                  color: Colors.amberAccent,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 18, 115, 227),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue),
                            margin: EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: 200,
                                  clipBehavior: Clip.antiAlias,
                                  child: Image(
                                    image: AssetImage("assets/images/logo.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(10)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
