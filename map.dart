void main() {
  var data = {"name": "dart", "age": 30, "dob": "10/10/1990"};
  print(data);
  print(data['age']);
  var data1 = {
    "id": [1, 2, 3, 4, 5],
    "name": ["product1", "product2", "product3", "product4", "product5"],
  };

  print(data1);

  for (var i = 0; i < data1["name"]!.length; i++) {
    print("i=${i}");
  }

/*   data1.values.forEach((element) {
    element.forEach((e1) {
      print(e1);
    });
  });
 */
  print("+++++++++++++++++++++++++++++");
/*   data1.keys.forEach((element) {
    if (element == "id") {
      print(data1[element]);
    }
  });
  print("---------------");
  data1.keys.forEach((element) {
    if (element == "name") {
      print(data1[element]);
    }
  }); */
  var listid = <dynamic>[];
  var listname = [];
  data1.keys.forEach((element) {
    if (element == "name") {
      data1[element]?.forEach((e1) {
        listname.add(e1);
      });
    }
    if (element == "id") {}
  });

  print("**********");
  print(listname);
}
