
main() {
  // Person().outputInfo();
  // var p1 = Person();//实例化
  // print(p1.age);
  // p1.outputInfo();
  // p1.inputInfo();
  // print("${p1.age},${p1.name}");

  Animal a1 = Animal("name", 10);
  print(a1.age);

  Animal a2 = Animal("壁虎", 1);
  print(a2.name);
}

/**
 * 定义类 首字母大写
 * */
class Person {
  String name = "张三";
  int age = 80;

// 默认构造函数，可以动态的给Person类定义属性
  Person(){
    print("这是构造函数里面的内容   这个方法在实例化时触发");
  }
  void outputInfo() {
    print(this.name);
    print("${this.name}");
  }
 
  void inputInfo({int? age, String? name}) {
    this.age = age??10;
    this.name = name??"zz";
  }
}

class Animal{
  String? name;
  int? age;

  //构造函数 - 完整写法
  // Animal(String name, int age){
  //   this.name = name;
  //   this.age = age;
  // }
  //构造函数 - 简写
  Animal(this.name,this.age);
}
