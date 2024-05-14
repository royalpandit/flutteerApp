class Info {
  Info(name) {
    print("name=${name}");
  }
  void show() {
    print("show class function");
  }
}

class Emp extends Info {
  Emp(super.name);

  void show() {
    var obj = new Info("dart");
  }
}

void main() {
  /*  var obj = new Info();
  obj.show();
 */
  var obj1 = new Emp("name");
  obj1.show();
}