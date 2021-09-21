
/**
 * 1、使用static关键字来实现类级别的变量和函数
 * 2、静态方法不能访问非静态成员，非静态方法可以访问静态成员
 * */ 
 class Person {
  static String name = "name";
  int age = 20;
  static show(){
     print(name);
    // 静态方法无法访问非静态属性
    // 静态方法无法访问非静态方法
   }

   printInfo(){
    print("非静态方法可以访问静态成员和非静态成员");
    print(name);//this表示当前类的实例，所以不需要加this，访问静态属性
    print(this.age);//访问非静态属性
    show();//调用静态方法
   }
 }

// 静态属性或静态方法可以直接通过类来访问，而不需要类的实例来访问
 main() {
   Person.show();

   Person p1 = Person();
   p1.printInfo();//非静态方法需要实例化调用
 }