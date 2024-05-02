import 'package:flutter/material.dart';

class NewOne extends StatelessWidget {
  const NewOne({super.key});

  @override
  Widget build(BuildContext context) {
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
                                child: Image(
                                  image: AssetImage("assets/images/logo.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                decoration: BoxDecoration(color: Colors.green,
                                borderRadius: BorderRadius.circular(15)),
                              ),
                              Container(
                                child: Text(
                                  "This is Salaman",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.deepOrange),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 400,
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                child: Image(
                                  image:
                                      AssetImage("assets/images/demodemo.jpeg"),
                                  fit: BoxFit.cover,
                                  height: 200,
                                  width: 200,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                child: Image(
                                  image: AssetImage("assets/images/logo.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "This is Salaman",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.deepOrange),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 400,
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                child: Image(
                                  image:
                                      AssetImage("assets/images/demodemo.jpeg"),
                                  fit: BoxFit.cover,
                                  height: 200,
                                  width: 200,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
