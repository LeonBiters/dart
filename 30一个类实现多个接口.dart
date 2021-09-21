/**
 * 一个类实现多个接口
 * */ 

abstract class A {
  String name = "";
  printA();
}

abstract class B {
  printB();
}

class C implements A,B {
  @override
  printA() {
    print("printA的方法");
  }

  @override
  String name = "" ;

  @override
  printB() {
    // TODO: implement printB
    throw UnimplementedError();
  }
}

 main() {
   var c = C();
   c.printA();
 }