/**
 * 泛型：
 *  解决 类、接口、方法的复用性，以及对不特定数据类型的支持（类型校验）
 * 
 * 注意：不指定类型放弃了类型检查
 * 
 * T getData<T>(T value){ return value;} 
 * T 表示泛型(任意类型)，可以是任意字母 一般用T表示 
 * <T>表示调用getData的时候指定类型
 * (T value)要求传入的value也是相同类型的泛型
 * */

// 泛型方法 可以动态传入类型
T getData<T>(T value) {
  return value;
}

// 如果不想对返回类型进行校验 去掉方法返回类型即可
// getData<T>(T value){ return value;}

main() {
  print(getData(21)); //这样写没有类型校验
  getData<String>("value"); //指定类型后就必须传入相同类型value

  MyList l1 = MyList();
  l1.add("字符串类型");
  l1.add(12);
  l1.add(true);
  print(l1.getList());

  // 实例化这个类MyList的时候指定泛型类型
  MyList l2 = MyList<String>();
  l2.add("");
  print(l2.getList());
}

/**
 * 集合List泛型类的使用
 * 如：把下面类转换成泛型类，要求MyList里面可以增加int类型的数据，也可以增加string类型数据
 * */
// class MyList {
//   List list = <int>[];
//   add(int value) {
//     this.list.add(value);
//   }

//   List getList() {
//     return list;
//   }
// }
// 普通类转换成泛型类
class MyList<T> {
  List list = <T>[];
  add(T value) {
    this.list.add(value);
  }

  List getList() {
    return list;
  }
}
