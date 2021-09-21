/**
 * 1、dart使用普通类或者抽象类都可以作为接口被实现
 * 2、使用implements关键字实现
 * 3、如果是普通类实现接口，会将普通类和抽象中的属性方法全部重写一遍
 * 4、因为抽象类可以定义抽象方法，普通类不可以，所以建议定义接口采用抽象类
 * */ 

/**
 * 定义一个DB库 支持 mysql mssql mongodb
 * 
 * mysql mssql mongodb三个类里面都有同样的方法
 * */ 

/**
 * implements是接口实现的关键字，实现多个接口
 * extends是继承实现的关键字，继承一个父类
 * */ 
// 把Db这个抽象类当成接口,接口就是规范（约定）
 abstract class Db {
   String? uri;//数据库的链接地址
   add(String data);
   delete();
   save();
 } 

 class Mysql implements Db {
  @override
  add(String data) {
    print("mysql add() " + data);
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  save() {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  String? uri;
   
   Mysql(this.uri);
 }

 class Mssql implements Db {
  @override
  add(String data) {
    print("mssql add() " + data);
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  save() {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  String? uri;
   
 }

 main() {
   Mysql my = Mysql("");
   my.add("测试数据"); 
 }