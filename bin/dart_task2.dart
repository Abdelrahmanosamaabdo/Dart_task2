void main() {
  Circle c = Circle();
  c.x = 5;
  c.getArea(c.x);
  print('*****************************');
  Rectangle r = Rectangle();
  r.x = 5;
  r.y = 4;
  r.getArea(r.x, r.y);
  print('*****************************');
  Triangle t = Triangle();
  t.x = 5;
  t.y = 4;
  t.getArea(t.x, t.y);
  print('*****************************');
  FilledCircle fc = FilledCircle();
  fc.y = 5;
  fc.defineME(fc.y);
}

mixin Shape {
  double x = 0;
  double y = 0;
  getArea(x) {
    print('Area = $x cm^2');
  }
}

class Circle with Shape {
  @override
  double x = 0;
  @override
  double y = 0;
  @override
  getArea(x) {
    double area = 3.14 * x * x;
    print('Area = $area cm^2');
    return 'Area = $area cm^2';
  }
}

class Rectangle with Shape {
  @override
  double x = 0;
  @override
  double y = 0;
  @override
  getArea(x, [y]) {
    double area = x * y;
    print('Area = $area cm^2');
  }
}

class Triangle with Shape {
  @override
  double x = 0;
  @override
  double y = 0;
  @override
  getArea(x, [y]) {
    double area = 0.5 * x * y;
    print('$area cm^2');
  }
}

mixin Fill {
  filled() {
    return 'It is a filled shape';
  }
}

class FilledCircle extends Circle with Fill {
  @override
  double y = 0;
  defineME(y) {
    print('''This is circle with area of 
    ${getArea(y)}
    ${filled()} ''');
  }
}
