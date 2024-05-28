import 'package:flutter/material.dart';
import 'package:hells/src/activity/login/ActivityCreateBid.dart';

class ActivityInsideDashboard extends StatelessWidget {
  var game1;
  var title = "Create Bid";
var imageBack = "assets/images/back.png";
  ActivityInsideDashboard({super.key, this.game1});

  //@override
  // State<ActivityInsideDashboard> createState() => _ActivityInsideDashboard();
//}

  onPressBack(context) {
    Navigator.pop(context);
  }
//class _ActivityInsideDashboard extends State<ActivityInsideDashboard> {
  OnPressNext(context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivityCreateBid()));
 
  
  }


  List dataImagess = [
    "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834",
    "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg",
    "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834",
    "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg",
    "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
  ];
  List myImageAndCaption = [
    ["assets/images/cat.jpeg"],
    ["assets/images/apple.jpeg"],
    ["assets/images/demodemo.jpeg"],
    ["assets/images/dog.jpeg"],
    ["assets/images/kbr.png"],
    ["assets/images/logo.jpg"],
    ["assets/images/play.png"],
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    //  print("Game=${game1}");

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () => onPressBack(context),
                icon: Icon(Icons.arrow_back_ios_new_outlined)),
            title: Text("Games"),
            centerTitle: true,
          ),
          resizeToAvoidBottomInset: false,
          body: GridView.builder(
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: () => OnPressNext(context),
                child: Column(
                  children: [
                    Image.network(
                      game1[index]["image"],
                      fit: BoxFit.fill,
                      height: height * .2,
                    ),
                    Text(game1[index]["name"])
                  ],
                ),
              ),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemCount: game1.length,
          )),
    );
  }
}
