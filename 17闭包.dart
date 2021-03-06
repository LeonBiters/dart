/**
 * 闭包：
 *  1、全局变量特点：全局变量常驻内存，全局变量污染全局
 *  2、局部变量的特点：不常住内存会被垃圾回收，不会污染全局
 * 
 *  闭包的功能：
 *    1、常驻内存    2、不污染全局
 *  定义：函数嵌套函数，内部函数会调用外部函数的变量或参数，变量或参数不会被系统
 *  写法：函数嵌套函数，并return里面的函数
 * */

main() {
  fn() {
    var a = 123;
    return () {
      a++;
      print(a);
    };
  }

  var v = fn();
  v(); //调用
}
