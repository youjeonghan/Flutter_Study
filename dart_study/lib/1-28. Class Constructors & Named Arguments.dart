class Person {
  String name;
  int age;

  Person({this.name, this.age});
}

int addNumbers(int num1, int num2) {
  // print(num1+num2);
  return num1 + num2;
}

void main() {
  var p1 = Person(name: "Max", age: 30);
  print(p1.name);
}
