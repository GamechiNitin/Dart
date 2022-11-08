import 'dart:developer';
import 'package:dart_rush/dart_rush.dart' as dart_rush;
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
  checkOut();
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
