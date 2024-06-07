import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hells/src/activity/login/ActivityGameRate.dart';
import 'package:hells/src/activity/login/ActivityHowToHelp.dart';
import 'package:hells/src/activity/login/ActivityInsideDashboard.dart';
import 'package:hells/src/activity/login/ActivityWithdraw.dart';
import 'package:hells/src/component/DrawerNew.dart';
import 'package:hells/src/component/HeaderNew.dart';
import 'package:hells/src/component/ListComponent.dart';
import 'package:hells/src/component/responsive_widget.dart';
import 'package:hells/src/network/api/authApi.dart';
import 'package:http/http.dart' as http;

class NeListScreen extends StatefulWidget {
  const NeListScreen({super.key});

  State<NeListScreen> createState() => _NeListScreen();
}

class _NeListScreen extends State<NeListScreen> {
  var code = 0;
  var status = "";
  var path = "";
  var message = "";
  var datalist = [];

  List contry = [];
  var designation = [];
  bool isLoading = false;
  var detals = [];
  void initState() {
    super.initState();
    // userRegister();
    OnPressList();
  }

  void OnPressList() async {
    setState(() {
      isLoading = true;
    });
    var paramssd = {
      "owner_id": 240,
      "company_id": 1,
      "page": 1,
      "search": "",
      "sort_by": "",
      "sort_type": ""
    };
    var authapi = authApi();
    print("");
    var res = await authapi.EmployeeList(paramssd);

    print("helorres==>>>${res?.body.runtimeType}");

    final responses = res?.body;
    print("*******");
   // print(jsonDecode(responses));
  }

  userRegister() async {
    var params = jsonEncode(<String, dynamic>{
      "owner_id": 240,
      "company_id": 1,
      "page": 1,
      "search": "",
      "sort_by": "",
      "sort_type": ""
    }); /* {"email": "", "password": "", "confirmpassword": ""}; */
    print(params);
    // const url = "http://192.168.130.148:4000/registeruser";
    try {
      const url = "https://nircore.betablackboard.in/api/employee-list";
      final uri = Uri.parse(url);
      final res = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: params,
      );

      print(res.body);
      var finalResponses = res.body;
      var json = jsonDecode(finalResponses);
      print("===>>>>>${json['data']}");
      print("cont===>>>;;;${json['data']['designation_count']}");
      print(
          "EmployeeDeatils=======>>>${json['data']['employee_result']['data']}");
      setState(() {
        designation = json['data']['designation_count'];
        detals = json['data']['employee_result']['data'];
      });
    } catch (e) {
      print("error$e");
    }
  }

  getCountry() async {
    try {
      // var URL = "https://nircore.betablackboard.in/api/country-list";
      var URL = "https://nircore.betablackboard.in/api/employee-list";
      //   var URL = "https://nircore.betablackboard.in/api/working-shift-list";
      // var URL = "http://192.168.130.148:4000/registeruser";
      var deay = 'hih';
      print("hello$deay");
      var params = {
        "owner_id": 240,
        "company_id": 1,
        "page": 1,
        /*  "owner_id": 240,
        "company_id": 1,
        "page": 1,
        "search": "",
        "sort_by": "",
        "sort_type": "", */
      };
      print(params);
      //{"email": "abhi@gmail.com", "password": "123456", "confirmpassword": "123456"};

      /*  */

      var url = Uri.parse(URL);
      print(url);
      var Response = await http.post(url, body: params);
      print("Response$Response");
      print("HelloHello");
      print("${Response.body}");

      var finalResponse = Response.body;
      var json = jsonDecode(finalResponse);

      //var data1 = json;
      setState(() {
        contry = json['data'];
      });

      print("${json['data']}");
    } catch (e) {
      print(e);
    }
  }

  List data = ["Apple", "Banana", "Cat", "Dog", "Elephant"];

  var dataMarket = {
    "id": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    "marketName": [
      "Milan Morning",
      "Kalyan Morning",
      "Sri Devi",
      "Madhuri Night",
      "Somvar Special",
      "Jaipur Power",
      "Rajasthan Royal",
      "Jay Haryana",
      "DCB Rocks",
      "MParivahan"
    ],
    "marketRecord": [
      "xxx-00-xxx",
      "xxx-01-xxx",
      "xxx-02-xxx",
      "xxx-03-xxx",
      "xxx-04-xxx",
      "xxx-05-xxx",
      "xxx-06-xxx",
      "xxx-07-xxx",
      "xxx-08-xxx",
      "xxx-09-xxx"
    ],
    "Open": [
      "Milan Morning",
      "Kalyan Morning",
      "Sri Devi",
      "Madhuri Night",
      "Somvar Special",
      "Jaipur Power",
      "Rajasthan Royal",
      "Jay Haryana",
      "DCB Rocks",
      "MParivahan"
    ],
    "OpenTime": [
      "11:00 AM",
      "12:00 AM",
      "11:45 AM",
      "11:12 AM",
      "11:54 AM",
      "11:43 AM",
      "12:00 AM",
      "13:00 AM",
      "14:00 AM",
      "15:00 AM"
    ],
    "CloseTime": [
      "11:00 AM",
      "12:00 PM",
      "11:45 PM",
      "11:12 PM",
      "11:54 PM",
      "11:43 PM",
      "12:00 PM",
      "13:00 PM",
      "14:00 PM",
      "15:00 PM"
    ]
  };

  var dataMarket1;
  var titles = "Home Screens";
  var imageBack = "assets/images/back.png";
  var imageAddCart = "assets/images/menu.png";
  var imageMenu = "assets/images/kbr.png";
  var imageNotifications = "assets/images/kbr.png";
  var seconImageNotifications = "assets/images/menu.png";
  List dataImagess = [
    "https://picsum.photos/id/237/200/300",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg",
    "https://st2.depositphotos.com/2001755/8564/i/450/depositphotos_85647140-stock-photo-beautiful-landscape-with-birds.jpg",
    "https://cdn.create.vista.com/api/media/small/54939973/stock-photo-beautiful-sunset-landscape",
    "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=800"
  ];
  var datamarketNew = [
    {
      "id": 1,
      "name": "kalyan Bazar",
      "marketRecord": "xxx-00x-xxx",
      "OpenTime": "11:00 AM",
      "CloseTime": "11:45 AM",
      "Game": [
        {
          "gID": 1,
          "name": "Single Digit",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 2,
          "name": "Double Digit",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 3,
          "name": "Single Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 4,
          "name": "Triple Pana",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 5,
          "name": "Half Sanagm",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 6,
          "name": "Full Sanagam",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 7,
          "name": "Full Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
      ]
    },
    {
      "id": 2,
      "name": "Madhur Market",
      "marketRecord": "xxx-01x-xxx",
      "OpenTime": "11:01 AM",
      "CloseTime": "11:46 AM",
      "Game": [
        {
          "gID": 1,
          "name": "Single Digit",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 2,
          "name": "Double Digit",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 3,
          "name": "Single Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 4,
          "name": "Triple Pana",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
      ]
    },
    {
      "id": 3,
      "name": "Sindh Bazar",
      "marketRecord": "xxx-02x-xxx",
      "OpenTime": "11:02 AM",
      "CloseTime": "11:47 AM",
      "Game": [
        {
          "gID": 1,
          "name": "Single Digit",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 2,
          "name": "Double Digit",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 3,
          "name": "Single Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 4,
          "name": "Triple Pana",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
      ]
    },
    {
      "id": 4,
      "name": "Boos Bank",
      "marketRecord": "xxx-03x-xxx",
      "OpenTime": "11:03 AM",
      "CloseTime": "11:48 AM",
      "Game": [
        {
          "gID": 1,
          "name": "Single Digit",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 2,
          "name": "Double Digit",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 3,
          "name": "Single Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 4,
          "name": "Triple Pana",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
      ]
    },
    {
      "id": 5,
      "name": "Panval Bazar",
      "marketRecord": "xxx-04x-xxx",
      "OpenTime": "11:04 AM",
      "CloseTime": "11:49 AM",
      "Game": [
        {
          "gID": 1,
          "name": "Single Digit",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 2,
          "name": "Double Digit",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 3,
          "name": "Single Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 4,
          "name": "Triple Pana",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
      ]
    },
    {
      "id": 6,
      "name": "Dhan Makret",
      "marketRecord": "xxx-05x-xxx",
      "OpenTime": "11:05 AM",
      "CloseTime": "11:51 AM",
      "Game": [
        {
          "gID": 1,
          "name": "Single Digit",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 2,
          "name": "Double Digit",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 5,
          "name": "Half Sanagm",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 6,
          "name": "Full Sanagam",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 7,
          "name": "Full Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
      ]
    },
    {
      "id": 7,
      "name": "DP Market",
      "marketRecord": "xxx-06x-xxx",
      "OpenTime": "11:06 AM",
      "CloseTime": "11:52 AM",
      "Game": [
        {
          "gID": 1,
          "name": "Single Digit",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 2,
          "name": "Double Digit",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 3,
          "name": "Single Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 4,
          "name": "Triple Pana",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 5,
          "name": "Half Sanagm",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 6,
          "name": "Full Sanagam",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 7,
          "name": "Full Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
      ]
    },
    {
      "id": 8,
      "name": "Host Bazar",
      "marketRecord": "xxx-07x-xxx",
      "OpenTime": "11:07 AM",
      "CloseTime": "11:53 AM",
      "Game": [
        {
          "gID": 1,
          "name": "Single Digit",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 2,
          "name": "Double Digit",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 3,
          "name": "Single Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 4,
          "name": "Triple Pana",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 5,
          "name": "Half Sanagm",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 6,
          "name": "Full Sanagam",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 7,
          "name": "Full Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
      ]
    },
    {
      "id": 9,
      "name": "Seven Digit",
      "marketRecord": "xxx-08x-xxx",
      "OpenTime": "11:078 AM",
      "CloseTime": "11:54 AM",
      "Game": [
        {
          "gID": 1,
          "name": "Single Digit",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 2,
          "name": "Double Digit",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 3,
          "name": "Single Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 4,
          "name": "Triple Pana",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 5,
          "name": "Half Sanagm",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 6,
          "name": "Full Sanagam",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 7,
          "name": "Full Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
      ]
    },
    {
      "id": 10,
      "name": "Single Digit",
      "marketRecord": "xxx-09x-xxx",
      "OpenTime": "11:09 AM",
      "CloseTime": "11:55 AM",
      "Game": [
        {
          "gID": 4,
          "name": "Triple Pana",
          "image":
              "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg"
        },
        {
          "gID": 5,
          "name": "Half Sanagm",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 6,
          "name": "Full Sanagam",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
        {
          "gID": 7,
          "name": "Full Pana",
          "image":
              "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
        },
      ]
    },
  ];

  onPressNext(context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ActivityWithdraw(name: dataMarket)));
  }

  onPressGameRates(context) {
    print("Activuty Game Rate");
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityGameRate()));
  }

  //OnPressMarket(context, game) {
  OnPressMarket(data) {
    print("${data}");
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityInsideDashboard()));
    // Navigator.of(context).push(MaterialPageRoute( builder: (context) => ActivityInsideDashboard(game1: game)));
  }

  onPressBack(context) {
    Navigator.pop(context);
  }

  onPressBacks() {
    print("Click This Icon");
    // Navigator.pop(context);
  }

  onPressListOpenData() {
    return Text("List");
  }

  onPressDrawerOpen(context) {
    print("drawerNEw");
    return Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    print("print$designation");

    double heigh = MediaQuery.of(context).size.height;
    double widt = MediaQuery.of(context).size.width;
    print("ThisContry=${contry}");
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
          top: true,
          bottom: false,
          left: true,
          right: true,
          child: Scaffold(
              drawer: Drawer(
                backgroundColor: Colors.white,
                child: Builder(builder: (context) {
                  return ListView(
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
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ActivityGameRate()));
                          //  onPressGameRates(context);
                          //  Navigator.pop(context);
                        },
                      ),
                      Divider(color: Colors.black),
                      ListTile(
                        leading: Icon(Icons.contacts),
                        title: Text("How To Play"),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ActivityHowToHelp()));
                          //  Navigator.pop(context);
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
                  );
                }),
              ),
              body: Container(
                child: Column(
                  children: [
                    Container(
                      child: Builder(
                        builder: (context) {
                          return HeaderNew(
                            title: titles,
                            onPressBtn: onPressDrawerOpen,
                            lefticon: seconImageNotifications,
                            rightcentericon: imageNotifications,
                            rightlefticon: seconImageNotifications,
                            rightrighticon: seconImageNotifications,
                          );
                          /* TextButton(
                              onPressed: ()=>onPressDrawerOpen(context),
                              child: Text("Hellthis Drawer")); */
                        },
                      ),
                      color: Colors.blue,
                    ),
                    ResponsiveWidget.isMediumScreen(context)
                        ? const SizedBox()
                        : Expanded(
                            child: Container(
                              color: Colors.brown,
                              height: heigh,
                              child: ListComponent(
                                  OnPressMarket: OnPressMarket,
                                  //  datamarketNew: datamarketNew,
                                  datamarketNew: designation),
                            ),
                          ),
                  ],
                ),
              ))),
    );
  }
}
