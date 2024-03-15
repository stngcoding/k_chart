import 'package:intl/intl.dart' as intl;
import 'dart:math';

class NumberUtil {
  static String formatValue(num value) {
    value = value / 1.0;
    var f = intl.NumberFormat("###.##", "en_US");
    var parts = f.format(value).split('.');
    var formatter = intl.NumberFormat('#,###,###', 'en_US');
    var money = formatter.format(double.tryParse(parts[0]));
    money = money.replaceAll('.', ',');
    if (parts.length > 1) {
      money = '$money.${parts[1]}';
    }
    return money.split('.')[0];
  }

  static String format(double n) {
    if (n >= 1000000000) {
      n /= 1000000000;
      return "${n.toStringAsFixed(2)}B";
    } else if (n >= 1000000) {
      n /= 1000000;
      return "${n.toStringAsFixed(2)}M";
    } else if (n >= 10000) {
      n /= 1000;
      return "${n.toStringAsFixed(2)}K";
    } else {
      return n.toStringAsFixed(4);
    }
  }

  static int getDecimalLength(double b) {
    String s = b.toString();
    int dotIndex = s.indexOf(".");
    if (dotIndex < 0) {
      return 0;
    } else {
      return s.length - dotIndex - 1;
    }
  }

  static int getMaxDecimalLength(double a, double b, double c, double d) {
    int result = max(getDecimalLength(a), getDecimalLength(b));
    result = max(result, getDecimalLength(c));
    result = max(result, getDecimalLength(d));
    return result;
  }

  static bool checkNotNullOrZero(double? a) {
    if (a == null || a == 0) {
      return false;
    } else if (a.abs().toStringAsFixed(4) == "0.0000") {
      return false;
    } else {
      return true;
    }
  }
}
