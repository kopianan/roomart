import 'package:intl/intl.dart';

class Formatter {
  String formatStringCurrency(String price) {
    final _format =
        NumberFormat.currency(locale: 'id-ID', name: "IDR ", decimalDigits: 0);

    var _formatted;
    try {
      _formatted = _format.format(double.parse(price));
    } catch (e) {
      _formatted = "IDR 0";
    }
    return _formatted;
  }

  String formatStringCurrencyNoSymbol(String price) {
    final _format =
        NumberFormat.currency(locale: 'id-ID', decimalDigits: 0, symbol: "");

    var _formatted;
    try {
      _formatted = _format.format(double.parse(price));
    } catch (e) {
      _formatted = "0";
    }
    return _formatted;
  }

  String fullDateFormat(String date) {
    var _date = DateTime.parse(
      date,
    );
    return DateFormat("dd MMMM yyyy").format(_date);
  }

  String dateFormatter(String date) {
    var _date = DateTime.parse(
      date,
    );
    return DateFormat("dd MMMM").format(_date);
  }

  String dateFormatGetYeard(String date) {
    var _date = DateTime.parse(
      date,
    );
    return DateFormat("yyyy").format(_date);
  }
}
