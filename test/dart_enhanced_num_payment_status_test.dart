import 'package:dart_enhanced_num_payment_status/dart_enhanced_num_payment_status.dart';
import 'package:test/test.dart';

void main() {
  test('PaymentStatus enum description property returns correct descriptions',
      () {
    expect(PaymentStatus.Pending.description, equals("Awaiting payment"));
    expect(PaymentStatus.Completed.description, equals("Payment completed"));
    expect(PaymentStatus.Failed.description, equals("Payment failed"));
    expect(PaymentStatus.Refunded.description, equals("Payment refunded"));
  });

  test('PaymentStatus isFinal method works correctly', () {
    expect(PaymentStatus.Pending.isFinal(), isFalse);
    expect(PaymentStatus.Completed.isFinal(), isTrue);
    expect(PaymentStatus.Failed.isFinal(), isFalse);
    expect(PaymentStatus.Refunded.isFinal(), isTrue);
  });
}
