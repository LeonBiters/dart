/**
 * 面向对象三大特征：封装、继承、多态
 * 
 * 1、子类使用extends关键词来继承父类
 * 2、子类会继承父类里面可见的属性和方法  但不会继承构造函数
 * 3、子类可以重写父类方法和定义方法
 * 
 * 1、继承
 * 2、super关键字，实例化子类的时候给父类传参
 * 3、实例化子类给父类的命名构造函数传参
 * 4、重写父类的方法
 * 5、子类调用父类的方法
 * */ 


 class Person {
  String name;
  num age;
  Person(this.age, this.name);//默认构造函数
  Person.xxx(this.age, this.name); //命名构造函数
  printInfo() {
    print("${this.name}, ${this.age}");
  }
}

class Son extends Person {
  String sex;
  /**
   * 1、如果父类有构造函数，继承父类则需要给父类传参,通过:super
   * 2、子类声明属性，通过构造函数初始化，无需super中传值
   * */ 
  // Son(num age, String name, this.sex) : super(age, name);

  // 给父类的命名构造函数传参
  Son(num age, String name, this.sex): super.xxx(age, name);
  // 子类可以写自己的方法，也可以继承父类的方法（属性同理）
  printSon(){
    print("${this.age},${this.name},${this.sex}");
  } 
  
  // 子类覆写父类方法 printInfo()
  @override
  printInfo() {
    print("override父类方法");
    super.printInfo(); //子类调用父类的方法
  }
  
  
}
main() {
  Person p = Person(20, "ppp");
  p.printInfo();

  Person p1 = Person(22, "pzp");
  p1.printInfo();

  Son s = Son(20,"1","s");//实例化子类时调用了父类的构造函数
  s.printSon();

  s.printInfo();
}