import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget {
  var OnPressMarket;
  var datamarketNew;

  ListComponent({super.key, this.OnPressMarket, this.datamarketNew});

  @override
  Widget build(BuildContext context) {
    print("===::>>>$datamarketNew");
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => InkWell(
          onTap: () => OnPressMarket(datamarketNew[index]),
          //  onTap: () => OnPressMarket(datamarketNew[index]["Game"]),
          child: Container(
            //padding: EdgeInsets.symmetric(horizontal: 5),

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
    );
  }
}
