
/**
 * 1、找库：
 *    https://pub.dev/packages
 *    https://pub.flutter-io.cn/packages
 *    https://pub.dartlang.org/flutter/
 * 2、创建一个pubspec.yaml文件：
 *    name:xxx
 *    description: xxxxxxxxxxxx
 *    dependencies:
 *        http: ^0.12.0+2
 *        date_format: ^1.0.6
 * 3、配置dependencies
 * 4、执行pub get获取远程库
 * */ 

/**
 * 解决文件不同，class命名相同
 * import'Person1';
 * import'Person2' as lib;
 * 
 * var person1 = Person();
 * var person2 = lib.Person();
 * */  

/**
 * 引入部分第三方库
 * 1、import'Person' show getName; 只使用getName
 * 2、import'Person' hide getName; 只隐藏getName
 * */  

/**
 * 延迟加载第三方库
 * import'Person' deferred as hello;
 * */  