import 'package:flutter/material.dart';
import 'package:hells/src/component/Header.dart';

class ActivityCreateBid extends StatefulWidget {
  var titles;
  var imageBacks;
  var onPressButton;

  ActivityCreateBid(
      {super.key, this.titles, this.onPressButton, this.imageBacks});

  State<ActivityCreateBid> createState() => _ActivityCreateBid();
}

class _ActivityCreateBid extends State<ActivityCreateBid> {
  onPressBacks() {
    print("Click This Icon");
    Navigator.pop(context);
  }

TextEditingController chooseDate= TextEditingController();
TextEditingController inputDigit= TextEditingController();
TextEditingController inputPana= TextEditingController();
TextEditingController inputCoins= TextEditingController();
  @override
  Widget build(BuildContext context) {
    var heigh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
           
             
               child: Header(
                title: "Create Bid",
                onPressButton: onPressBacks,
                imageBack: "assets/images/back.png",
                imageNotification: "",
                seconImageNotification: "",
              ),
            
            ),
            /* Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text("Choose Date",style: TextStyle(color: Colors.black,fontSize: 12,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  TextField(
                    controller: chooseDate,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      hintText: "Choose Date"
                    ),
                  )
                ],
              ),
            ),
             Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text("Enter Pana",style: TextStyle(color: Colors.black,fontSize: 12,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  TextField(
                    controller: inputPana,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      hintText: "Enter Pana"
                    ),
                  )
                ],
              ),
            ),   Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text("Enter Digit",style: TextStyle(color: Colors.black,fontSize: 12,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  TextField(
                    controller: inputDigit,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      hintText: "Enter Digit"
                    ),
                  )
                ],
              ),
            ),   Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text("Enter Amount",style: TextStyle(color: Colors.black,fontSize: 12,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  TextField(
                    controller: inputCoins,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      hintText: "Enter Amount"
                    ),
                  )
                ],
              ),
            )
 */

          ],
        ),
      ),
    );
  }
}
