import 'package:intl/intl.dart';

class Formatter {
  String formatStringCurrency(String price) {
    final _format =
        NumberFormat.currency(locale: 'id-ID', name: "IDR ", decimalDigits: 0);

    return _format.format(double.parse(price));
  }

  String formatStringCurrencyNoSymbol(String price) {
    final _format =
        NumberFormat.currency(locale: 'id-ID', decimalDigits: 0, symbol: "");

    return _format.format(double.parse(price));
  }

  String dateFormatter(String date) {
    var _date = DateTime.parse(
      date,
    );
    return DateFormat("dd MMM").format(_date);
  }

  String dateFormatGetYeard(String date) {
    var _date = DateTime.parse(
      date,
    );
    return DateFormat("yyyy").format(_date);
  }
}
