import 'package:flutter/material.dart';
import 'package:hells/src/screen/LoginScreen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  //const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    onPressBack(context) {
      Navigator.pop(context);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () => onPressBack(context),
              icon: const Icon(Icons.backspace),
            ),
            title: Text("Login Screen"),
            actions: const [Icon(Icons.help_center)]),
        body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            leading: Image(
              image: AssetImage("assets/images/demodemo.jpeg"),
              height: 300,
            ),
            title: Text("Categories"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen())),
            subtitle: Text("Sub Categories"),
            trailing: Column(
              children: [
                Container(
                  child: Icon(Icons.arrow_right_outlined),
                ),
                Container(
                  child: Text(
                    "Price 300",
                    style: TextStyle(color: Colors.cyan, fontSize: 14),
                  ),
                )
              ],
            ),
          ),
          itemCount: 30,
        ),
      ),
    );
  }
}
