/**
 * 判断数据类型
 * 
 * is关键字来判断类型
 * */ 
main() {
  var str = 1234123;
  if (str is String) {
    print("str 是 字符串类型");
  } else {
    print("str 是其他类型");
  }
}