/**
 * 映射（Maps）是无序的键值对：
 *  常用属性：
 *    keys      获取所有key值
 *    values    获取所有的value值
 *    isEmpty   是否为空
 *    isNotEmpty  是否不为空
 *  常用方法：
 *    remove(key)   删除指定key的数据
 *    addAll（{...}）合并映射  给映射内增加属性
 *    containsValue 查看映射内的值  返回true/false
 *    forEach
 *    map
 *    where
 *    any
 *    every
 * */ 

 main() {
   var person = {
     "name":"zhangsan",
     "age":19
   };

   var m = Map();
   m["name"] = "lisi";

  //  常用属性：
    print(person.keys.toList());
    print(person.values.toList());
    print(person.isEmpty);
    print(person.isNotEmpty);

    // 常用方法：
    person.addAll({"other":"aaa"});
    print(person);

    person.remove("other");
    print(person);

    print(person.containsValue("value"));
    print(person.containsKey("key"));

 }