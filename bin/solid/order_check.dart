class OrderCheck {
  num? totalAmount;
  num? taxPercentage;
  num? tip;
  num? shippingPrice;

  void calculateOrder() {
    final orderTotal = totalAmount! + taxPercentage! + tip! + shippingPrice!;
    print("Total Amount => $orderTotal");
  }
}

class EmailOrder {
  static final email = "nitingamechi@gmail.com";
  static void sendEmail() {
    print("Sending email to $email with amount");
  }
}
