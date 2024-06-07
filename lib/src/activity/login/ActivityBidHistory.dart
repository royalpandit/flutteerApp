import 'package:flutter/material.dart';
import 'package:hells/src/component/Po_Header.dart';
import 'package:flutter/cupertino.dart';

class ActivityBidHistory extends StatefulWidget {
  const ActivityBidHistory({super.key});

  @override
  State<ActivityBidHistory> createState() => _ActivityBidHistoryState();
}

class _ActivityBidHistoryState extends State<ActivityBidHistory> {
  DateTime date = DateTime(2016, 10, 26);
  DateTime dateto = DateTime(2016, 10, 26);

  TextEditingController chooseDate = TextEditingController();
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  onPressBacks() {
    print("Click This Icon");
    Navigator.pop(context);
  }

  var titles = "Bid History";
  var imageBack = "assets/images/back.png";
  var imageAddCart = "assets/images/menu.png";
  var imageMenu = "assets/images/kbr.png";
  var imageNotifications = "assets/images/kbr.png";
  var seconImageNotifications = "assets/images/menu.png";
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var datenow = new DateTime(now.year, now.month, now.day);
    //  var dateto = new DateTime(now.year, now.month, now.day);
    // print(date.toString().replaceAll("00:00:00.000", ""));
    // print(dateto);
    var heigh = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Container(
          color: Colors.red,
          child: Column(
            children: [
              Container(
                child: Po_Header(
                  title: titles,
                  onPressBtn: onPressBacks,
                  lefticon: imageBack,
                  rightcentericon: imageMenu,
                  rightlefticon: imageMenu,
                  rightrighticon: imageMenu,
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                height: heigh * .15,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                //    height: heigh*.1,
                width: double.infinity,

                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  width: width * .4,
                                   child: Text(
                                    "From Date",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Container(
                                  width: width * .4,
                                  height: heigh * .03,
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    onTap: () => _showDialog(
                                      CupertinoDatePicker(
                                        initialDateTime: datenow,
                                        mode: CupertinoDatePickerMode.date,
                                        use24hFormat: false,
                                        maximumYear: 2024,
                                        // This shows day of week alongside day of month
                                        showDayOfWeek: true,
                                        // This is called when the user changes the date.
                                        onDateTimeChanged: (DateTime newDate) {
                                          setState(() => date = newDate);
                                          //  formattedDate = "${dates.day}-${date.month}-${date.year}";
                                        },
                                      ),
                                    ),
                                    readOnly: true,
                                    controller: chooseDate,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        labelStyle:
                                            TextStyle(color: Colors.black),
                                        hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        //   hintText: formattedDate)

                                        hintText:
                                            "${date.day}-${date.month}-${date.year}"),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                    width: width * .4,
                                  child: Text(
                                    "To Date",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Container(
                                  width: width * .4,
                                  height: heigh * .03,
                                  child: TextField(
                                    textAlign: TextAlign.start,
                                    style: TextStyle(color: Colors.white),
                                    onTap: () => _showDialog(
                                      CupertinoDatePicker(
                                        initialDateTime: dateto,
                                        maximumYear: 2024,
                                        mode: CupertinoDatePickerMode.date,
                                        use24hFormat: false,
                                        // This shows day of week alongside day of month
                                        showDayOfWeek: true,
                                        // This is called when the user changes the date.
                                        onDateTimeChanged: (DateTime newDate) {
                                          setState(() => dateto = newDate);
                                        },
                                      ),
                                    ),
                                    readOnly: true,
                                    controller: chooseDate,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.yellow)),
                                        labelStyle:
                                            TextStyle(color: Colors.black),
                                        hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        hintText:
                                            "${dateto.day}-${dateto.month}-${dateto.year}"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      height: heigh * .039,
                      child: ElevatedButton(
                        onPressed: () => "",
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
