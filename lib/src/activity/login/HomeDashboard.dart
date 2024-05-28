import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:hells/src/activity/login/ActivityInsideDashboard.dart';
import 'package:hells/src/activity/login/ActivityWithdraw.dart';
import 'package:hells/src/component/Header.dart';
import 'package:hells/src/component/HeaderNew.dart';
import 'package:ticker_text/ticker_text.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  List data = ["Apple", "Banana", "Cat", "Dog", "Elephant"];
  var dataMarket1;
  var titles = "Home Screens";
  var imageBack = "assets/images/back.png";
  var imageAddCart = "assets/images/menu.png";
  var imageMenu = "assets/images/kbr.png";
  var imageNotifications = "assets/images/kbr.png";
  var seconImageNotifications = "assets/images/menu.png";
  List dataSub = [
    "A sweet, crisp, and juicy fruit with a vibrant red or green skin, enjoyed worldwide for its delicious flavor and nutritional value.",
    "Yellow, curved, sweet, potassium-rich, nutritious,potassium-laden, peelable, smooth.",
    "Feline, whiskered,  nocturnal, elegant, stealthy.",
    "Canine, loyal, friendly, playful, obedient, furry, protective, energetic, lovable, intelligent, affectionate, trainable, faithful, barking, tail-wagging, adventurous, social, devoted, sniffing, cuddly.",
    "Giant, majestic, intelligent, trunked, tusked, wrinkled, herbivorous, social, family-oriented, gray, enormous, powerful, gentle, endangered, impressive, massive, lumbering, tusker, iconic, herbivore."
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
  List dataMarketsName = [
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
  ];
  List dataMarketsRec = [
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
  ];

  //List dataSub = ["apple", "banan", "cat", "dog", "elephant"];
  List dataImages = [
    "assets/images/apple.jpeg",
    "assets/images/banana.jpeg",
    "assets/images/cat.jpeg",
    "assets/images/dog.jpeg",
    "assets/images/elephatnt.jpeg"
  ];
  List dataImagess = [
    "https://picsum.photos/id/237/200/300",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg",
    "https://st2.depositphotos.com/2001755/8564/i/450/depositphotos_85647140-stock-photo-beautiful-landscape-with-birds.jpg",
    "https://cdn.create.vista.com/api/media/small/54939973/stock-photo-beautiful-sunset-landscape",
    "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=800"
  ];
  onPressNext(context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityWithdraw(name: dataMarket)));
  }

  OnPressMarket(context, game) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityInsideDashboard()));
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ActivityInsideDashboard(game1: game)));
  }

  onPressBack(context) {
    Navigator.pop(context);
  }

  onPressBacks() {
    print("Click This Icon");
    Navigator.pop(context);
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      /* appBar: AppBar(
          leading: IconButton(
            onPressed: () => onPressBack(context),
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text("Kalyan"),
        ), */

      body: SafeArea(
          child: Container(
              child: Column(
        children: [
          Container(
            height: height*.1,
              child: Header(
                  title: titles,
                  onPressButton: onPressBacks,
                  imageBack: imageBack,
                  imageNotification: imageNotifications,
                  seconImageNotification: seconImageNotifications),
              // child:HeaderNew(title: titles, onPressButton: onPressBacks,imageBack: imageBack,imgMenu: imageMenu,imgAddCart: imageAddCart,) ,

            ),
          Container(
            //   child:SafeArea(child: child)
            child: Column(
              children: [
                Container(
                  height: height * .2,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: Colors.white),
                  //  decoration:BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      child: ImageSlideshow(
                        width: 1000,
                        height: 200,
                        initialPage: 0,
                        indicatorColor: Colors.blue,
                        isLoop: true,
                        autoPlayInterval: 2000,
                        children:
                            List<Widget>.generate(dataImagess.length, (index) {
                          return Image.network(
                            dataImagess[index],
                            fit: BoxFit.fill,
                          );
                        }),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                    height: height * .018,
                    child: TickerText(
                      // default values
                      //controller: tickerTextController, // this is optional
                      scrollDirection: Axis.horizontal,
                      speed: 50,
                      startPauseDuration: const Duration(seconds: 2),
                      endPauseDuration: const Duration(seconds: 10),
                      returnDuration: const Duration(milliseconds: 1000),
                      primaryCurve: Curves.linear,
                      returnCurve: Curves.easeOut,
                      child: Text(
                          "सोमवार कल्याण बाजार बम्पर धमाका अचूक जोड़ी पर कमाओ लाखों 100% फिक्स 1 जोड़ी 2 पत्ती सिर्फ एक दिन में आपका पूरा "),
                    )),

                Container(
                  //  height: height*.1,
                  //  margin: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          height: height * .0781,
                          width: width * .281,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          child: InkWell(
                            onTap: () => onPressNext(context),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset(
                                    "assets/images/apple.jpeg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Withdraw",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Container(
                        height: height * .0781,
                        width: width * .281,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              child: Image.asset(
                                "assets/images/apple.jpeg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Add Points",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height * .0781,
                        width: width * .281,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              child: Image.asset(
                                "assets/images/apple.jpeg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Withdraw",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //   SizedBox(height: 1),

                CupertinoScrollbar(
                  child: Container(
                    color: Colors.brown,
                    height: height * 0.519,

                    child: ListView.builder(
                      itemBuilder: (context, index) => InkWell(
                          onTap: () => OnPressMarket(
                              context, datamarketNew[index]["Game"]),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            margin: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.4),
                                      offset: Offset(0, 0),
                                      blurRadius: 3,
                                      spreadRadius: 3)
                                ]),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/images/chart.png",
                                                fit: BoxFit.cover,
                                                height: 30,
                                                width: 30,
                                              ),
                                            ),
                                            Container(
                                              child: Text("Chart"),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          // "Hello",
                                          //   "${dataMarket["marketName"]![index]}",
                                          "${datamarketNew[index]["name"]}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                        "${datamarketNew[index]["marketRecord"]}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      )),
                                      Container(
                                          child: Text(
                                        "Market Status",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "Open Times : ${datamarketNew[index]["OpenTime"]}",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Text(
                                              "Close Times : ${datamarketNew[index]["CloseTime"]}",
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                          "assets/images/play.png",
                                          fit: BoxFit.cover,
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                      Container(
                                        child: Text("Play"),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                      itemCount: datamarketNew.length,
                    ),
                    //),
                  ),
                )
              ],
            ),
          )
        ],
      ))),
    );
  }
}
