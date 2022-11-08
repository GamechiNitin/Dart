import 'solid/open_closed.dart';
import 'solid/order_check.dart';

void main(List<String> arguments) {
  print('SOLID Principle:');

// S.O.L.I.D. STANDS FOR:
// S — Single responsibility principle
// O — Open closed principle
// L — Liskov substitution principle
// I — Interface segregation principle
// D — Dependency Inversion principle
  print(
      "S.O.L.I.D. STANDS FOR:\nS — Single responsibility principle \nO — Open closed principle \nL — Liskov substitution principle \nI — Interface segregation principle \nD — Dependency Inversion principle");

// S — Single responsibility principle
  // checkOut();
// O — Open closed principle
  openClosedPrinciplesCheckOut();
}

checkOut() {
// S — Single responsibility principle
// A class should have one and only one reason to change,
// meaning that a class should have only one job.

  print(
      "\nS — Single responsibility principle \nA class should have one and only one reason to change,\nmeaning that a class should have only one job.\n");

  final rawOrder = OrderCheck();
  rawOrder.totalAmount = 100;
  rawOrder.taxPercentage = 0.7;
  rawOrder.tip = 9;
  rawOrder.shippingPrice = 5;
  rawOrder.calculateOrder();
  EmailOrder.sendEmail();
}

openClosedPrinciplesCheckOut() {
// O — Open closed principle
// Objects or entities should be open for extension, but closed for modification.
// meaning that a class should have only one job.

  print(
      "\nO — Open closed principle \nObjects or entities should be open for extension, but closed for modification.\nThis simply means that a class should be easily extendable without modifying the class itself.\n");

  final openOrder = CustomerInfo();
  openOrder.totalAmount = 100;
  openOrder.taxPercentage = 0.7;
  openOrder.tip = 9;
  openOrder.shippingPrice = 5;
  openOrder.calculateOrder();
  EmailOrder.sendEmail();
  print("Balance => ${openOrder.balance}");

  final circle = Circle(radius: 5);
  final square = Square(length: 5);
  final rectangle = Rectangle(height: 5, width: 6);

  final area = AreaCalculation(shape: circle);
  final areaOfSquare = AreaCalculation(shape: square);
  final areaOfRectangle = AreaCalculation(shape: rectangle);
  area.calculateArea();
  areaOfSquare.calculateArea();
  areaOfRectangle.calculateArea();
}
