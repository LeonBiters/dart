/**
 * set
 * 用它最主要的功能就是去除数组重复内容
 * Set是没有顺序且不能重复的集合，所以不能通过索引值去获取值
 * */
main() {
  //  var s = Set();
  //  s.add("value");
  //  s.add("1");
  //  s.add("value");
  //  print(s.toList());

  var repeatList = ["AAA", "BBB", "CCC", "AAA", "BBB"];
  var s = Set();
  s.addAll(repeatList);
  print(s.toList());
}
