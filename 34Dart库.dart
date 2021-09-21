/**
 * 三种主要库：
 * 1、自定义库
 *      import "lib/xxx.dart";
 * 2、系统内置库
 *      import "dart:math";
 * 3、Pub管理系统中的库
 *      https://pub.dev/packgaes
 *      1、项目中创建pubspec.yaml
 *      2、在pubspec.yaml配置名称、描述、依赖等信息
 *      3、运行pub get下载到本地
 *      4、引入：import"package:http/http.dart" as http; 
 * 
 * async和await
 *  1、只有async方法才能使用await关键字
 *  2、如果调用别的async方法必须使用awit关键字
 * async是让方法变成异步
 * await是等待异步方法执行完成 
 * */

import 'dart:io'; //提供http的对象，请求网络数据
import 'dart:convert'; //字符编码库 UTF8

// async异步，await同步，await必须在async下使用
main() async {
  var result = await getData();
  print(result);
}

// api：http://news-at.zhihu.com/api/3/stories/latest
getData() async {
  // 1、创建HttpClient对象
  var httpClient = HttpClient();
  // 2、创建Uri对象
  var uri = Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  // 3、发起请求、等待请求
  var request = await httpClient.getUrl(uri);
  // 4、关闭请求、等待响应
  var response = await request.close();
  // 5、解码响应的内容
  return await response.transform(utf8.decoder).join();
}
