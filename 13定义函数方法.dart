/**
 * 内置方法、函数：
 *    print();
 * 自定义方法：
 *    基本格式：
 *    返回类型 方法名称(参数1，参数2...) {
 *        方法体
 *        return 返回值;
 *    }
 * 
 * 1、自定义方法可以放在main()上面或者里面！
 * 2、方法可以嵌套方法
 * */ 

void printInfo(){
  print("自定义方法");
}

void main() {
  printInfo();//调用printInfo

  int getNum(){
    return 123;
  }
  print(getNum());
}