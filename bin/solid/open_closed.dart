import 'order_check.dart';

class CustomerInfo extends OrderCheck {
  // Here we are extending CustomerInfo with OderCheck with modifying OrderCheck.
  // Also not breaking Single responsibility principle.
  num balance = 20;
}

// Area Calculation Example

abstract class Shape {
  void area();
}

class Circle implements Shape {
  num radius;
  Circle({required this.radius});

  @override
  void area() {
    var sum = 3.14 * (radius * radius);
    print("Area of Circle => $sum");
  }
}

class Square implements Shape {
  num length;
  Square({required this.length});
  @override
  void area() {
    var sum = (4 * length);
    print("Area of Square => $sum");
  }
}

class Rectangle implements Shape {
  num height;
  num width;
  Rectangle({required this.height, required this.width});

  @override
  void area() {
    var sum = 2 * (height * width);
    print("Area of Rectangle => $sum");
  }
}

class AreaCalculation {
  Shape shape;
  AreaCalculation({required this.shape});

  //  --- Break Open Closed Principles

  calculate() {
    if (shape is Circle) {
      print("PI r2");
    } else if (shape is Square) {
      print("4l");
    }
  }

  //  --- Solution for Open Closed Principles
  calculateArea() {
    shape.area();
  }
}
