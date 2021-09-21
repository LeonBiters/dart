/**
 * 官方demo：
 * abstract class ObjectCache {
  getByKey(String key);
  setByKey(String Key, Object value);
}

abstract class StringCache {
  getByKey(String key);
  setByKey(String Key, Object value);
}

abstract class Cache<T> {
  getByKey(String key);
  setByKey(String Key, T value);
}
 * */

/**
 * 泛型接口：
 *  实现数据缓存的功能：有文件缓存和内存缓存。内存缓存和文件缓存按照接口约束实现
 *  1、定义一个泛型接口 约束实现它的子类，必须有getByKey和setBayKey
 *  2、要求setByKey的时候value的类型和实例化子类的时候指定的类型一致
 * */

abstract class Cache<T> {
  getByKey(String key);
  setByKey(String Key, T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {}

  @override
  setByKey(String key, T value) {
    print("key = $key, value = $value");
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {}

  @override
  setByKey(String key, T value) {
    print("key = $key, value = $value");
  }
}

main() {
  var m = MemoryCache<String>();
  m.setByKey("key", "shujv ");
}
