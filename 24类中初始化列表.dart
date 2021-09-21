// Dart中可以再构造函数运行之前初始化实例变量
class Rect {
  int? height;
  int? width;

  // 实例化之前给参数赋值
  Rect():width = 2, height = 10{
  }

  getArea(){
    return this.height!*this.width!;
  }
}

main() {
  Rect r = Rect();
  print(r.getArea());
}