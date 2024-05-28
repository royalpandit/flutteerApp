import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  var onPressButton;
  var title;
  var imageBack;
  var imageNotification;
  var seconImageNotification;

  Header(
      {super.key,
      this.onPressButton,
      this.title,
      this.imageBack,
      this.imageNotification,
      this.seconImageNotification});

  /* @override
  State<Header> createState() => _Header();
   */
//}

//class _Header extends State<Header> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: () => onPressButton(),
            icon: Image.asset("${imageBack}", height: 30)),
        title: Text("${title}"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        actions: [
          Column(
            children: [
              imageNotification != ""
                  ? Container(
                      height: 40,
                      width: 40,
                      child: IconButton(
                          onPressed: () => onPressButton(),
                          icon: Image.asset(
                            "${imageNotification}",
                          )),
                    )
                  : Container()
            ],
          ),
          Column(
            children: [
              seconImageNotification != ""
                  ? Container(
                      height: 40,
                      width: 40,
                      child: IconButton(
                          onPressed: () => onPressButton(),
                          icon: Image.asset("${seconImageNotification}")),
                    )
                  : Container()
            ],
          )
        ],
      ),
    );
  }
}
