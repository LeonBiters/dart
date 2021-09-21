/**
 * 常用数据类型：
 * Numbers（数值）：
 *    int
 *    double
 * Strings（字符串）：
 *    string
 * Booleans（布尔）：
 *    bool
 * List（数组）：
 *    在Dart中，数组是列表对象，所以大多数人只是称它们为列表
 * Maps（字典）：
 *    通常来说，Map是一个键值对相关的对象，键和值可以是任何类型的对象，每个 键 只出
 * */

/**字符串*/
//  main() {
//   // 1、字符串定义的集中方式
//   var str1 = '这是个字符串';

//   var str2 = "这也是个字符串";
//   print(str1);
//   print(str2);
//   //var可以判断类型，但是更建议指定类型

//   String str3 = "指定类型字符串";
//   print(str3);

//   String str4 = '''
//                     多行字符串
//                     第二行
//                 ''';
//   print(str4);
//   // 2、字符串的拼接
//   String appendStr1 = "你好啊";
//   String appendStr2 = "Dart！！！";
//   print("这是字符串拼接 = $appendStr1 $appendStr2");
//   print("第二种字符串拼接 = $appendStr1 $appendStr2");
//   print(appendStr1 + appendStr2);
//  }

/**数字类型*/
// main() {
//   // 1、int
//   int a = 123;
//   print(a);
//   // 2、double
//   double price = 10.7;
//   print(price);
//   // 3、运算符
// // + - * 、 %
// }

/**布尔类型*/
// main() {
//   // 1、bool
//   bool flag = true;
//   print(flag);
//   // 2、条件判断语句
//   // ==  !=
// }

/**List(数组/集合)*/
// main() {
// // 1、第一种定义List的方式
//   var l1 = ["字符串", 20, true];
//   print(l1.length); //集合长度
//   print(l1[0]); //通过下标找相对应的元素

// // 2、第二种定义List的方式 指定类型
//   var l2 = <String>["1", "2", "3"]; //尖括号内指定类型  字符串数组
//   var l3 = <int>[12, 30, 40]; //尖括号内指定类型  int数组

// // 3、第三种定义List的方式 增加数据,通过[]创建的集合它的容量是可变的
//   var l4 = [];
//   l4.add("value");
//   l4.add(20);
//   print(l4);

// // 4、第四种定义List的方式
// // 通过List.filled创建的集合长度是固定的
//   var invariantList = List.filled(2, ""); //创建固定长度的集合
//   invariantList[0] = "aaa"; //修改集合内容
//   invariantList[1] = "bbbb";
//   print(invariantList);
// }

/**Maps(字典)*/
main() {
  // 第一种定义Maps的方式
  var person = {
    "name": "a",
    "age": 20,
    "work": ["程序员", "外卖员"]
  };
  print(person);
  print(person["name"]);
  print(person["age"]);
  print(person["work"]);
  print("---end---");
  // 第二种定义Maps的方式
  var person1 = Map();
  person1["name"] = "b";
  person1["age"] = 22;
  person1["worK"] = ["程序员", "外卖员"];
  print(person1);
}
