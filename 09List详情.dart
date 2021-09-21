/**
 * List常用的属性和方法：
 *
 *  常用属性：
 *      length      长度
 *      reversed    翻转
 *      isEmpty     是否为空
 *      isNotEmpty  是否不为空
 *  常用方法：
 *      add         增加
 *      addAll      拼接数组
 *      indexOf     查找 传入具体值
 *      remove      删除 传入具体值
 *      removeAt    删除 传入索引值
 *      fillRange   修改
 *      insert(index,value)   指定位置插入
 *      insertAll(index,list)   指定位置插入List
 *      toList()      其他类型转换成List
 *      join()      List转换成字符串
 *      split()     字符串转换成List
 *      forEach     
 *      map
 * */

main() {
  //  List属性：
  // var myList = ["AAA", "BBB", "CCC"];
  // print(myList.length);
  // print(myList.isEmpty);
  // print(myList.isNotEmpty);
  // print(myList.reversed); //只进行倒叙排序，不输出List
  // var reversedList = myList.reversed.toList();
  // print(reversedList);

  //List方法：
  var myList = ["AAA", "BBB", "CCC"];
  myList.add("value"); //增加单个数据
  print(myList);

  myList.addAll(["DDD", "FFF"]); //数组拼接
  print(myList);

  print(myList.indexOf("BBB"));

  myList.remove("BBB");
  myList.removeAt(1);
  print(myList);

  myList.fillRange(0, 1, "test");
  print(myList);

  myList.insert(1, "element");
  myList.insertAll(2, ["~", "~"]);
  print(myList);

  var listStr = myList.join(",");
  print(listStr);

  var strList = "111,222,333";
  myList = strList.split(",");
  print(myList);
}
