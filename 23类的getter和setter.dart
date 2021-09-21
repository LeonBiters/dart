class Rect {
  num? height;
  num? width;
  Rect(this.height, this.width);
  get area { // getter
    return this.width! * this.height!;
  }

  set areaHeight(value) { //setter
    this.height = value;
  }
}

main() {
  Rect r = Rect(35.3, 10);
  print(r.area); //调用直接通过访问属性的方式访问area
  r.areaHeight = 2;
  print(r.area);
}
