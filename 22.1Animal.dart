
class Animal {
  String name;
  int _age; //私有属性

  Animal(this.name, this._age);

  printInfo() {
    print("${this.name}, ${this._age}");
  }

  //使用公有方法可将私有属性传出
  int getAge() {
    return this._age;
  }

  //  定义私有方法,在当前类可以访问
  _run() {
    print("私有方法");
  }

  //公有方法jian'jie
  execRun(){
    this._run();
  }
}
