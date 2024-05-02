import 'package:flutter/material.dart';
import 'package:hells/src/screen/ListScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.account_tree_rounded),
              title: Text("hello!!!"),
              actions: [
                Icon(Icons.account_balance_sharp),
                Icon(Icons.abc_sharp)],
            ),
            body: Container(
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    color: Colors.black,
                  ),
                  Container(
                    height: 200,
                    color: const Color.fromARGB(255, 176, 16, 16),
                  ),
                  Container(
                    height: 200,
                    width: width,
                    margin: EdgeInsets.only(top: 10),
                    color: Color.fromARGB(255, 9, 76, 109),
                    child: TextButton(child: Text("Hello Click ME"), onPressed: () => Navigator. of(context).push ( MaterialPageRoute(builder: (context)=>ListScreen())),),
                  ) 
                ],
              ),
            )
            )
            );
  }
}
