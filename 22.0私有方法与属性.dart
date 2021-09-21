import '22.1Animal.dart';
/**
 * 1、Dart中没有public preivate这些访问修饰符
 * 2、使用_ 将属性或者方法定义成私有
 * 3、私有方法或私有属性需要单独抽离成一个文件
 * */ 

 main() {
   var a1 = Animal("dog",3);
    print(a1.name);

    a1.execRun(); //通过公有方法间接调用私有方法
 }