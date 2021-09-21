/**
 * mixins：混入 在类中混入其他功能
 * mixins实现类似多继承的功能
 * 
 * mixins使用条件，随着版本的变化一直在修改，下面是2.x的mixins使用条件
 * 1、作为mixins的类只能继承自Object，不能继承其他类
 * 2、mixins的的类不能有构造函数
 * 3、一个类可以mixins多个mixins类
 * 4、mixins不是继承也不是接口，而是一种全新的特性
 * 
 * class XXX with A，B  with是关键字
 * 如果想要有person和A和B的方法，可以写写作：
 *  1、class C with Person,A,B   通过mixins实现，但是有mixins的缺陷
 *  2、class C extends Person with A，B  继承的Person类可以实现构造函数
 * 
 * mixins的实例类型是什么：其超类的子类型
 * 
 * */
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  printInfo() {
    print("${this.name},${this.age}");
  }

    semFunc() {
    print("继承Person，Mixins A类和B类 三个类有相同的方法，执行后者 - Person");
  }
}

// A类继承了Person类，所以不能作为mixins类
class A {
  printA() {
    print("A");
  }

  semFunc() {
    print("继承Person，Mixins A类和B类 三个类有相同的方法，执行后者 - A");
  }
}

class B {
  printB() {
    print("B");
  }

  semFunc() {
    print("继承Person，Mixins A类和B类 三个类有相同的方法，执行后者 - B");
  }
}

// 实现了类似多继承的功能，用with表示
class C extends Person with A, B {
  C(String name, int age) : super(name, age);
}

main() {
  var c = C("test", 12);
  c.printInfo();
  c.semFunc();
}
