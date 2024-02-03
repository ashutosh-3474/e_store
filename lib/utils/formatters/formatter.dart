import 'package:intl/intl.dart';

class EFormatter {
  static String formatdata(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd-mmm-yyyy").format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // if (phoneNumber.length == 10) {
    return phoneNumber;
    // }
  }
}
