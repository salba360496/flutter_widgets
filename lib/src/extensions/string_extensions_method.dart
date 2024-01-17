import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DcsStringExtensions on String? {
  bool get isNegative {
    if (this == null) {
      return false;
    } else {
      final double? x = double.tryParse(this!.replaceAll(',', ''));
      if (x == null) {
        return false;
      } else {
        return x < 0;
      }
    }
  }

  String get dmySlash {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return '-';
      } else {
        return DateFormat.yMd().format(x);
      }
    }
  }

  ///Format 23/feb/2020
  ///
  /// Date Month In Words Year.
  ///
  ///Converts String in Method dat_Mon_In_Wrd_Yr().
  ///
  ///using 'intl package' pattern .yMMMMd('en_US').
  ///
  ///passing: '2022-02-23'.dat_Mon_In_Wrd_Yr(),
  ///
  ///output: February 23, 2022

  String get yMMMMdSlash {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return '-';
      } else {
        return DateFormat.yMMMMd('en_US').format(x);
      }
    }
  }

  ///Format feb, 23/10/2020.
  ///
  ///Month In Words Date Month Year.
  ///
  ///Converts String in Method mon_In_Wrd_Dat_Mon_Yr().
  ///
  ///using 'intl package' pattern => DateFormat('MMM, y/M/d').
  ///
  ///passing: '2022-02-23'..mon_In_Wrd_Dat_Mon_Yr(),
  ///
  ///output: Feb, 23/02/2022

  String get mmmDmySlash {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return '-';
      } else {
        return DateFormat('MMM, d/M/y').format(x);
      }
    }
  }

  ///Date Month Year With Dashes.
  ///
  ///23-10-23
  ///
  ///Converts String in Method dat_yr_Wth_Dshs().
  ///
  ///using 'intl package' pattern => DateFormat('y-M-d').
  ///
  ///passing: '2022-02-23'..dat_yr_Wth_Dshs(),
  ///
  ///output: Feb, 2022-02-23

  String get mydDash {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return '-';
      } else {
        return DateFormat('d-M-y').format(x);
      }
    }
  }

  ///23-feb-23
  ///
  ///Date,Month,Year with Dashes.
  ///
  ///Converts String in Method dat_Mon_Yr_wth_Dshs().
  ///
  ///using 'intl package' pattern => DateFormat('d-MMMM-y').
  ///
  ///passing: '2022-02-23'.dat_Mon_Yr_wth_Dshs(),
  ///
  ///output: 23-February-2022

  String? get mmmDmyDash {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return '-';
      } else {
        return DateFormat('d-MMM-y').format(x);
      }
    }
  }

  String get monthYear {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return '-';
      } else {
        return DateFormat('MMM-y').format(x);
      }
    }
  }

  String get dayOfWeek {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return '-';
      } else {
        return DateFormat('EEEE').format(x);
      }
    }
  }

  String get yearDate {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return '-';
      } else {
        return DateFormat('y').format(x);
      }
    }
  }

// return converted date from 01-Jan-2023 to 2023-01-01 20:18:04Z
  String get mmmDmyDashRevert {
    if (this == null) {
      return '';
    } else {
      try {
        return DateFormat('d-MMM-y').parse(this!).toString();
      } catch (e) {
        debugPrint(e.toString());
      }
      return '';
    }
  }

  String? get getTime {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return null;
      } else {
        return DateFormat('hh:mm aa').format(x);
      }
    }
  }

  String? get eeeDDComma {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return null;
      } else {
        return DateFormat('EEE, dd').format(x);
      }
    }
  }

  String? get mmmYYYYComma {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return null;
      } else {
        return DateFormat('MMM, yyyy').format(x);
      }
    }
  }

  DateTime? get parseDateTimeToTimeOfDay {
    if (this == null || this == 'null') {
      return null;
    } else {
      final TimeOfDay t =
          TimeOfDay(hour: int.parse(this!.split(':')[0].replaceAll('TimeOfDay(', '')), minute: int.parse(this!.split(':')[1].replaceAll(')', '')));
      final DateTime now = DateTime.now();
      return DateTime(now.year, now.month, now.day, t.hour, t.minute);
    }
  }

  ///feb, 23-02-2022
  ///
  /// Month In Words Date Month Year With Dashes.
  ///
  ///Converts String in Method mon_In_Wrd_Dat_Mon_yr_Wth_Dshs().
  ///
  ///using 'intl package' pattern => DateFormat('MMMM, d-M-y').
  ///
  ///passing: '2022-02-23'.mon_In_Wrd_Dat_Mon_yr_Wth_Dshs(),
  ///
  ///output: February, 23-02-2022

  String get mmmmDmyDash {
    if (this == null) {
      return '-';
    } else {
      final DateTime? x = DateTime.tryParse(this!);
      if (x == null) {
        return '-';
      } else {
        return DateFormat('MMMM, d-M-y').format(x);
      }
    }
  }

  String get dcsCurrencyFormat {
    if (this == null) {
      return '0';
    } else {
      final NumberFormat x = NumberFormat(',###.##', 'en_US');
      final double? z = double.tryParse(this!.replaceAll(',', ''));
      if (z == null) {
        return '0';
      } else {
        return x.format(z);
      }
    }
  }

  String get dcsNumberFormat {
    if (this == null) {
      return '0';
    } else {
      final NumberFormat x = NumberFormat('###.##', 'en_US');
      final double? z = double.tryParse(this!);
      if (z == null) {
        return '0';
      } else {
        return x.format(z);
      }
    }
  }

  String get dcsAmountFormat {
    if (this == null) {
      return '0';
    } else {
      final NumberFormat x = NumberFormat.compactCurrency(decimalDigits: 2, symbol: '');
      final double? z = double.tryParse(this!);
      if (z == null) {
        return '0';
      } else {
        return x.format(z);
      }
    }
  }

  String get dcsPercentageFormat {
    if (this == null) {
      return '0';
    } else {
      final NumberFormat x = NumberFormat(',###.##', 'en_US');
      final double? z = double.tryParse(this!);
      if (z == null) {
        return '0';
      } else {
        if (z > 100) {
          return '100';
        } else {
          return x.format(z);
        }
      }
    }
  }

  DateTime? get parsedDateTime {
    if (this == null) {
      return null;
    } else {
      final DateTime eventDate = DateTime(
        int.parse(this!.substring(this!.length - 4)),
        getMonth(this!.substring(3, 6)),
        int.parse(this!.substring(0, 2)),
      );
      return eventDate;
    }
  }

  int getMonth(final String month) {
    switch (month.toLowerCase()) {
      case 'jan' || 'january':
        return 01;
      case 'feb' || 'february':
        return 02;
      case 'mar' || 'march':
        return 03;
      case 'apr' || 'april':
        return 04;
      case 'may':
        return 05;
      case 'jun' || 'june':
        return 06;
      case 'jul' || 'july':
        return 07;
      case 'aug' || 'august':
        return 08;
      case 'sep' || 'september':
        return 09;
      case 'oct' || 'october':
        return 10;
      case 'nov' || 'november':
        return 11;
      case 'dec' || 'december':
        return 12;
    }
    return 0;
  }
}
