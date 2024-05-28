import 'package:flutter/material.dart';
import 'package:hells/src/activity/login/ActivityGameRate.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  onPressGameRates(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ActivityGameRate()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(
          children: [
            Container(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                   UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                accountName: Text("Abhishek Sharme"),
                accountEmail: Text("x@x.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              )
                ],
              ),
            )
          ],
        )

        /* Column(
      children: [
        Container(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                accountName: Text("Abhishek Sharme"),
                accountEmail: Text("x@x.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  print("Home");
                  //Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Wallet"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Withdrawal History"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Transfer History"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Bid History"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Win History"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Game Rates"),
                onTap: () {
                  //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityGameRate()));
                  onPressGameRates(context);
                  //Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("How To Play"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Share With Friends"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Rate App"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        )
      ],
    )  */
        );
  }
}
