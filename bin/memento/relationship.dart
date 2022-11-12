// Inheritance -> is a relationship

class Person {}

class Nitin extends Person {}

// Composition -> Has a relationship

class Service1 {
  ConnectionInterface? connection;

  Service1(this.connection);
}

class ConnectionInterface {}

// Dependency

// if we added class to another then it is dependency

class TaxRegion {}

class Order {
  calculate(TaxRegion taxRegion) {}
}
