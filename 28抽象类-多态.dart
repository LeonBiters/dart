/**
 * 抽象类：抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口
 *  1、抽象类通过abstract关键字来定义
 *  2、抽象方法无法通过abstract声明，Dart中没有方法体的方法就是抽象方法
 *  3、如果子类继承抽象类，必须实现里面的抽象方法
 *  4、如果把抽象类当做接口实现的话，必须得实现抽象类里定义的所有属性和方法
 *  5、抽象类不能被直接实例化，只有继承它的子类可以
 * 
 * extends抽象类 和 implements的区别：
 *  1、如果要复用抽象类里面的方法，并且要用抽象方法约束子类的话，使用extends继承抽象类
 *  2、如果只是把抽象类当做标准的话，使用implements实现抽象类
 * */

/**
 * 多态：
 *  1、允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果
 *  2、子类的实例赋值给父类的引用
 *  3、多态就是父类定义一个方法不去实现，让继承它的子类去实现，每个子类有不同的表现
 * */ 
 
//  1、定义一个Animal类， 要求他的子类必须包含eat方法 (只有抽象类可以实现)
abstract class Animal {
  /**
   * eat方法不加{}，不去实现方法体，只是定义，就叫抽象方法
   * */
  eat();
  run();

  printInfo(){
    print("抽象类可以定义非抽象方法");
  }
}

class Dog extends Animal {
  // eat是父类的抽象方法
  @override
  eat() {
    print("狗吃shit");
  }

  @override
  run() {
    print("抽象方法要全部实现");
  }
}

class Cat extends Animal {
  @override
  eat() {
    print("猫吃鱼");
  }

  @override
  run() {
    print("抽象方法全部要实现，eat() run()");
  }
}

main() {
  Dog d = Dog();
  d.eat();

  Cat c = Cat();
  c.run();

  c.printInfo();
}
