/**
 * 1、参数可以不写类型
 * 2、可选参数写法：
 *    2.1：[int? age]
 *    2.2：{int? twoAge}
 *    2.3：{int treeAge = 10}
 * 3、默认参数：
 *    3.1 [int age = 1]
 * */
main() {
  // 1、定义一个方法 求1到这个数的所有数的和 60  1+2+3+4...60
  int sumNum(int n) {
    var sum = 0;
    for (var i = 0; i < n + 1; i++) {
      sum += i;
    }
    return sum;
  }
  print(sumNum(60));

  // 2、定义一个方法然后打印用户信息
  String printUserInfo(String name, int age) {
    return "姓名:$name   年龄:$age";
  }
  print(printUserInfo("name", 20));

  // 3、定义一个带默认参数的方法
   String printOneDefaultUserInfo(String name, [int age = 191]) {
    return "姓名:$name   年龄:$age";
  }
  print(printOneDefaultUserInfo("name"));

  // 4、定义一个带可选参数的方法
  String printOneOptionalUserInfo(String name, [int? age]) {
    return "姓名:$name   年龄:$age";
  }
  print(printOneOptionalUserInfo("name", 20));

  // 5、定义一个命名参数方法
  // 5.1
  String printOneNamedlUserInfo(String name, {int? twoAge}) {
    return "姓名:$name   年龄:$twoAge";
  }
  print(printOneNamedlUserInfo("name", twoAge: 12));

  // 5.2
  String printTwoNamedlUserInfo(String name, {int treeAge = 10}) {
    return "姓名:$name   年龄:$treeAge";
  }
  print(printTwoNamedlUserInfo("name", treeAge: 100));

  // 6、实现一个把方法当做参数的方法
  fn1(){
    print("fn1");
  }

  fn2(fnName){
    fnName();
  }
  fn2(fn1);

  var anonymityFn = (){
    print("匿名方法");
  };
  anonymityFn();
}
