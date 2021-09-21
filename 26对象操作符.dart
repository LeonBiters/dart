/**
 *  ?   条件运算符
 *  as  类型转换
 *  is  类型判断
 *  ..  级联操作（连缀）
 * */

class Person {
  String name = "";
  num age = 0;
  Person(this.age, this.name);

  printInfo() {
    print("${this.name}, ${this.age}");
  }
}

main() {
// 级联 连缀
  Person p1 = Person(20, "name");
  p1.printInfo();
  p1..name = "lisi"
    ..age = 201
    ..printInfo();
}
