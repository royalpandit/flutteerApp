import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:hells/src/activity/login/ActivityInsideDashboard.dart';
import 'package:hells/src/activity/login/ActivityWithdraw.dart';
import 'package:hells/src/component/Header.dart';
import 'package:ticker_text/ticker_text.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  List data = ["Apple", "Banana", "Cat", "Dog", "Elephant"];
  List dataSub = [
    "A sweet, crisp, and juicy fruit with a vibrant red or green skin, enjoyed worldwide for its delicious flavor and nutritional value.",
    "Yellow, curved, sweet, potassium-rich, nutritious,potassium-laden, peelable, smooth.",
    "Feline, whiskered,  nocturnal, elegant, stealthy.",
    "Canine, loyal, friendly, playful, obedient, furry, protective, energetic, lovable, intelligent, affectionate, trainable, faithful, barking, tail-wagging, adventurous, social, devoted, sniffing, cuddly.",
    "Giant, majestic, intelligent, trunked, tusked, wrinkled, herbivorous, social, family-oriented, gray, enormous, powerful, gentle, endangered, impressive, massive, lumbering, tusker, iconic, herbivore."
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
    "https://www.shutterstock.com/image-photo/ancient-temple-ruins-gadi-sagar-260nw-786126286.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg",
    "https://st2.depositphotos.com/2001755/8564/i/450/depositphotos_85647140-stock-photo-beautiful-landscape-with-birds.jpg",
    "https://cdn.create.vista.com/api/media/small/54939973/stock-photo-beautiful-sunset-landscape",
    "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=800"
  ];
  onPressNext(context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ActivityWithdraw(name: dataMarket)));
  }

  OnPressMarket(context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ActivityInsideDashboard()));
  }

  onPressBack(context) {
    Navigator.pop(context);
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        /* appBar: AppBar(
          leading: IconButton(
            onPressed: () => onPressBack(context),
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text("Kalyan"),
        ), */
        body: Container(
            child: Column(
          children: [
            Container(height: 50, child: Header()),
            Container(
              //   child:SafeArea(child: child)
              child: Column(
                children: [
                  /* Container(
                height: height * .2,
                width: double.maxFinite,
                decoration: BoxDecoration(color: Colors.red),
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
              ), */
                  /*    SizedBox(
                height: 5,
              ),
              Container(
                  height: height * .021,
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
                  )), */
                  /*  SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        height: height * .0781,
                        width: width * .271,
                        margin: EdgeInsets.all(10),
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
                      margin: EdgeInsets.all(10),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * .0781,
                      width: width * .281,
                      margin: EdgeInsets.all(10),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ), */
                  // SizedBox(height: 5),
                  Container(
                    color: Colors.yellow,
                    height: height * 0.619,
                    child: InkWell(
                        onTap: () => OnPressMarket(context),
                        child: ListView.builder(
                          itemBuilder: (context, index) => Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            margin: EdgeInsets.all(5),
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
                                  margin: EdgeInsets.all(10),
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
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          // "Hello",
                                          "${dataMarket["marketName"]![index]}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Container(
                                          child: Text(
                                        dataMarketsRec[index],
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
                                              "Open Times : ${dataMarket['OpenTime']![index]} ",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Text(
                                              "Close Times : ${dataMarket["CloseTime"]![index]}",
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
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
                          ),
                          itemCount: dataMarket["marketName"]?.length,
                        )),
                    /*   child: ListView.builder(
                  itemBuilder: (context, index) => ListTile(


                    leading: Image.network(
                      dataImagess[index],
                      width: width * .1,
                    ),
                    title: Text("Hello"),
                  ),
                  itemCount: data.length,
                ), */
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
