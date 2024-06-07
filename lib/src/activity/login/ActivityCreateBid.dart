import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hells/src/activity/login/HomeDashboard.dart';
import 'package:hells/src/component/Header.dart';
import 'package:hells/src/component/Po_Header.dart';
import 'package:hells/src/component/responsive_widget.dart';

class ActivityCreateBid extends StatefulWidget {
  var titles;
  var imageBacks;
  var onPressButton;

  ActivityCreateBid(
      {super.key, this.titles, this.onPressButton, this.imageBacks});

  State<ActivityCreateBid> createState() => _ActivityCreateBid();
}

class _ActivityCreateBid extends State<ActivityCreateBid> {
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
  DateTime date = DateTime(2016, 10, 26);
  int _radioValue = 0;
  int _selectedValue = 1;
  onPressBacks() {
    print("Click This Icon");
    Navigator.pop(context);
  }

  var titles = "Create Bid";
  var imageBack = "assets/images/back.png";
  var imageAddCart = "assets/images/menu.png";
  var imageMenu = "assets/images/kbr.png";
  var imageNotifications = "assets/images/kbr.png";
  var seconImageNotifications = "assets/images/menu.png";
  TextEditingController chooseDate = TextEditingController();
  TextEditingController inputDigit = TextEditingController();
  TextEditingController inputPana = TextEditingController();
  TextEditingController inputCoins = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var heigh = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Container(
          child: Column(children: [
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
            ResponsiveWidget.isMediumScreen(context)
                ? const SizedBox()
                : Expanded(
                    child: CupertinoScrollbar(
                        child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Choose Date",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextField(
                                
                                onTap: () => _showDialog(
                                  CupertinoDatePicker(
                                    initialDateTime: date,
                                    mode: CupertinoDatePickerMode.date,
                                    use24hFormat: false,
                                    // This shows day of week alongside day of month
                                    showDayOfWeek: true,
                                    // This is called when the user changes the date.
                                    onDateTimeChanged: (DateTime newDate) {
                                      setState(() => date = newDate);
                                    },
                                  ),
                                ),
                                
                                readOnly: true,
                                controller: chooseDate,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: "$date.month-$date.day-$date.year"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Radio(
                                value: 1,
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue = value!;
                                    print(_selectedValue);
                                  });
                                },
                              ),
                              new Text(
                                'Open Session',
                                style: new TextStyle(fontSize: 16.0),
                              ),
                              new Radio(
                                value: 2,
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue = value!;
                                    print(_selectedValue);
                                  });
                                },
                              ),
                              new Text(
                                'Close Session',
                                style: new TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Enter Pana",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextField(
                                controller: inputPana,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: "Enter Pana"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Enter Digit",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextField(
                                controller: inputDigit,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: "Enter Digit"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Enter Amount",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextField(
                                controller: inputCoins,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: "Enter Amount"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: width * .8),
                                //width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextButton(
                                    style: ButtonStyle(),
                                    onPressed: () => "",
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  )
          ]),
        ),
      )),
    );
  }
}
