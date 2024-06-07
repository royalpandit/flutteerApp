import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:hells/src/component/Po_Header.dart';
import 'package:hells/src/component/responsive_widget.dart';

class ActivityHowToHelp extends StatefulWidget {
  const ActivityHowToHelp({super.key});

  @override
  State<ActivityHowToHelp> createState() => _ActivityHowToHelpState();
}

class _ActivityHowToHelpState extends State<ActivityHowToHelp> {
  var titles = "How To Help";
  var imageBack = "assets/images/back.png";
  var imageAddCart = "assets/images/menu.png";
  var imageMenu = "assets/images/kbr.png";
  var imageNotifications = "assets/images/kbr.png";
  var seconImageNotifications = "assets/images/menu.png";
  onPressBacks() {
    print("Click This Icon");
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Container(
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
              ResponsiveWidget.isMediumScreen(context)
                  ? const SizedBox()
                  : Expanded(
                      child: Container(
                      child: WebviewScaffold(
                        url: "https://www.google.com/",
                      ),
                    ))
              /* Container(
              child: WebView(
                initialUrl: "https://flutter.dev",
              ),
            ) */
            ],
          ),
        ),
      )
      ),
    );
  }
}
