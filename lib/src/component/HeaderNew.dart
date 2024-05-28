

import 'package:flutter/material.dart';
 

class HeaderNew extends StatelessWidget {
  var title;
  var onPressBtn;
  var lefticon;
  var rightrighticon;
  var rightcentericon;
  var rightlefticon;

  HeaderNew(
      {super.key,
      this.title,
      this.onPressBtn,
      this.lefticon,
      this.rightcentericon,
      this.rightlefticon,
      this.rightrighticon});

  Widget build(BuildContext context) {
    
    print("****$rightcentericon");

    return Column(children: [
      Container(
        color: Colors.red,
        // margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: InkWell(
                onTap: () => onPressBtn(context),
                child: Image.asset(
                  "${lefticon}",
                  height: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "${title}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: rightlefticon != null
                        ? InkWell(
                            onTap: () => onPressBtn(),
                            child: Image.asset(
                              "${rightlefticon}",
                              height: 20,
                            ),
                          )
                        : Text(""),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: rightcentericon != null
                        ? InkWell(
                            onTap: () => onPressBtn(),
                            child: Image.asset(
                              "${rightcentericon}",
                              height: 20,
                            ),
                          )
                        : Text(""),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: rightrighticon != null
                        ? InkWell(
                            onTap: () => onPressBtn(),
                            child: Image.asset(
                              "${rightrighticon}",
                              height: 20,
                            ),
                          )
                        : Text(""),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
