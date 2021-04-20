import 'package:intl/intl.dart';

class Formatter {
  String formatStringCurrency(String price) {
    final _format =
        NumberFormat.currency(locale: 'id-ID', name: "IDR ", decimalDigits: 0);

    return _format.format(double.parse(price));
  }
}
