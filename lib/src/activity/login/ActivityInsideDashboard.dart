import 'package:flutter/material.dart';

class ActivityInsideDashboard extends StatefulWidget {
  const ActivityInsideDashboard({super.key});

  @override
  State<ActivityInsideDashboard> createState() => _ActivityInsideDashboard();
}

class _ActivityInsideDashboard extends State<ActivityInsideDashboard> {
  onPressBack(context) {
    Navigator.pop(context);
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
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () => onPressBack(context),
                icon: Icon(Icons.arrow_back_ios_new_outlined)),
            title: Text("Games"),
            centerTitle: true,
          ),
          body: GridView.builder(
            
              itemBuilder: (context, index) => Container(
                color: Colors.amber,
                    child:  Image.network(dataImagess[index],fit: BoxFit.fill),
                  ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                 // childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
                  itemCount: dataImagess.length,
                  )
                  
                  ),
    );
  }
}
