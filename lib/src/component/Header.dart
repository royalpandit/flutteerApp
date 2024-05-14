import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _Header();
}

class _Header extends State<Header> {
  onPressBack(context) {
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
            leading: IconButton(
                onPressed: () => onPressBack(context),
                icon: Icon(Icons.arrow_back_ios_new_outlined)),
            title: Text("Games"),
            centerTitle: true,
          ),
      ),
    );
  }
}
