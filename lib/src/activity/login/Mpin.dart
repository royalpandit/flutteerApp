import 'package:flutter/material.dart';

class Mpin extends StatefulWidget {
  const Mpin({super.key});

  State<Mpin> createState() => _mPin();
}

class _mPin extends State<Mpin> {
  onPressBack(context) {
    Navigator.pop(context);
  }

  List data = ["Apple", "Banana", "Cat", "Dog", "Elephant"];
  List dataSub = [
    "A sweet, crisp, and juicy fruit with a vibrant red or green skin, enjoyed worldwide for its delicious flavor and nutritional value.",
    "Yellow, curved, sweet, potassium-rich, nutritious,potassium-laden, peelable, smooth.",
    "Feline, whiskered,  nocturnal, elegant, stealthy.",
    "Canine, loyal, friendly, playful, obedient, furry, protective, energetic, lovable, intelligent, affectionate, trainable, faithful, barking, tail-wagging, adventurous, social, devoted, sniffing, cuddly.",
    "Giant, majestic, intelligent, trunked, tusked, wrinkled, herbivorous, social, family-oriented, gray, enormous, powerful, gentle, endangered, impressive, massive, lumbering, tusker, iconic, herbivore."
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
    "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834",
    "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg",
    "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834",
    "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?cs=srgb&dl=pexels-wdnet-235294.jpg&fm=jpg",
    "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => onPressBack(context),
            icon: Image(image: AssetImage("assets/images/kbr.png")),
          ),
          title: Text("MPin"),
        ),
        body: ListView.builder(
          // itemBuilder: (context, index) => Text(data[index]),
          // itemCount: data.length,
          itemBuilder: (context, index) => ListTile(
            leading: 
            Image.network(dataImagess[index]),
            
            title: Text(data[index]),
            subtitle: Text(
              dataSub[index],
              maxLines: 1,
            ),
            trailing: Container(
              width: 70,
              height: 40,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        dataImages[index],
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      child: Text(data[index]),
                    )
                  ],
                ),
              ),
            ),
          ),
          itemCount: data.length,
        ),
      ),
    );
  }
}
