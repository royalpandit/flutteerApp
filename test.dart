void main() {
  // print("message");

  // var even = 0;
  // var odd = 0;

  /*  for (int i = 0; i <= 10; i++) {
    print(i);
    if (i % 2 == 0) {

      even += i;
    } else {
      odd += i;
    }
  } */

  // var i = 1;

  /*  while (i <= 10) {
    if (i % 2 == 0) {
      even += i;
    } else {
      odd += i;
    }
    i++;
  } */

/*  do {
    if (i % 2 == 0) {
      even += i;
    } else {
      odd += i;
    }
    i++;
  }
  while (i <= 10); */

/*   print("even is = ${even}");
  print("odd is = ${odd}"); */

  List datas= [5, 3, 5, 8, 9, 1, 4];
  // print(data);

  /* for (int i in data) {
    print(i);
  } */

  /*  data.forEach((e)=> {
    print(e)
  }); */

  /* data.forEach((element) {
    print(element);
  }); */
/* 
  data.add(2);
  data.addAll([9, 8, 7, 6, 5, 4, 3, 2]);
  var l = data.length;

  data.insert(2, 1);

  data.remove(5);
  data.removeAt(1);
  data.removeLast();

  var i = data.map((e) => e == 5);
  print(data);
  data.insertAll(3, [10, 11, 12, 13, 14]);
  // var o = data.every((element) => element > 3);
  print(data); */
  // print();
  // print(l);
var data = {"name": "dart", "age": 30, "dob": "10/10/1990"};
  print(data);
  print(data['age']);
  var data1 = {
    "id": [1, 2, 3, 4, 5],
    "name": ["product1", "product2", "product3", "product4", "product5"],
  };

  print(data1);
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
