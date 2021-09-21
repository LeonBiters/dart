/**
 * dart里构造函数可以写多个
 * */
class Animal {
  String? name;
  int? age;

  //默认构造函数的简写
  Animal(this.name, this.age);

  // 继续定义Animal类的命名构造函数，命名构造函数可以写多个
  Animal.happy() {
    print("命名构造函数");
  }

  // Animal.unhappy(this.name, this.age);
  Animal.unhappy(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // 定义printInfo方法
  printInfo() {
    print("name = $name, age = $age");
  }
}

main() {
  //实例化DateTime这个类 调用now这个命名构造函数
  final d = DateTime.now();
  print(d);

  // 默认实例化类的时候调用的是默认构造函数
  Animal a1 = Animal("name", 1);
  a1.printInfo();

  // 初始化时会调用命名构造函数
  // Animal a2 = Animal.happy();
  Animal.unhappy("unhappy", 1).printInfo();
}
