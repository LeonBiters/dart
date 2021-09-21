void main() {
  var str = "hello";
  var myNum = 12345;
  print(myNum);
  print(str);
// 采用var进行变量声明，类型自动推断
  String stri = '类型关键词定义变量';
  int intNum = 123;
  print(stri);
  print(intNum);

  /**
   * 命名规则：
   * 1、变量名称必须由数字、字母、下划线和美元符组成
   * 2、标识符开头不能是数字
   * 3、标识符不能是保留字和关键字
   * 4、变量的名字是区分大小写：age和Age是不同的变量
   * 5、标识符（变量名称）需见名思意
   * */ 

  /**
   * 常量： final和const
   * const值不变 一开始就得赋值
   * final 可以开始不赋值 只能赋一次；而final不仅有const的编译时常量的特性，最重要的他是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化
   * */  
}