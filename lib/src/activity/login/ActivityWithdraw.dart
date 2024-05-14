import 'package:flutter/material.dart';

class ActivityWithdraw extends StatelessWidget {
  var name;

  ActivityWithdraw({super.key, this.name});

  onPressBack(context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(name);
    var id = name["id"];
    var name1 = name["marketName"];
    print(id);
    print(name1);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => onPressBack(context),
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text("Withdraw"),
        ),
        body: Container(
          child: Column(
            children: [
              Column(
                // children: [Text("${name}")],
                children: [Text("Withdraw}")],
              ),
              Container(
                height: height * .5,
                child: ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    /*  leading: Image.network(
                      name1[index],
                      width: width * .1,
                    ), */
                    title: Text("${name1[index]}"),
                  ),
                  itemCount: name1.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
