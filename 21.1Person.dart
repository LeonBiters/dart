class Person{
  String? name;
  int? age;

  //构造函数 - 完整写法
  // Animal(String name, int age){
  //   this.name = name;
  //   this.age = age;
  // }
  //构造函数 - 简写
  Person(this.name,this.age);

  outPutPerson(){
    print("${this.name}, ${this.age}");
  }
}