/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_enhanced_num_payment_status_base.dart';

// TODO: Export any libraries intended for clients of this package.

enum PaymentStatus {
  Pending("Awaiting payment"),
  Completed("Payment completed"),
  Failed("Payment failed"),
  Refunded("Payment refunded");

  const PaymentStatus(this.description);

  final String description;
  bool isFinal() {
    if (this == Pending || this == Failed) {
      return false;
    } else {
      return true;
    }
  }
}



/*
Practice Question 2: Enhanced Enum for Payment Status
Question:

Create an enhanced enum PaymentStatus with 
values Pending, Completed, Failed, Refunded.
Implement a description property that returns 
a user-friendly string description for each 
status (e.g., Pending returns "Awaiting payment").
Add a method isFinal that returns true if the 
status is either Completed or Refunded.
 */