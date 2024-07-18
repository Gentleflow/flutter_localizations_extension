import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

const lbLocaleDatePatterns = {
  'd': 'd',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
  'LLLL': 'LLLL',
  'M': 'L',
  'Md': 'd.M.',
  'MEd': 'EEE, d.M.',
  'MMM': 'LLL',
  'MMMd': 'd. MMM',
  'MMMEd': 'EEE, d. MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd. MMMM',
  'MMMMEEEEd': 'EEEE, d. MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'M.y',
  'yMd': 'd.M.y',
  'yMEd': 'EEE, d.M.y',
  'yMMM': 'MMM y',
  'yMMMd': 'd. MMM y',
  'yMMMEd': 'EEE, d. MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd. MMMM y',
  'yMMMMEEEEd': 'EEEE, d. MMMM y',
  'yQQQ': 'QQQ y',
  'yQQQQ': 'QQQQ y',
  'H': 'HH',
  'Hm': 'HH:mm',
  'Hms': 'HH:mm:ss',
  'j': 'HH',
  'jm': 'HH:mm',
  'jms': 'HH:mm:ss',
  'jmv': 'HH:mm v',
  'jmz': 'HH:mm z',
  'jz': 'HH z',
  'm': 'm',
  'ms': 'mm:ss',
  's': 's',
  'v': 'v',
  'z': 'z',
  'zzzz': 'zzzz',
  'ZZZZ': 'ZZZZ',
};

const lbDateSymbols = {
  'NAME': 'lb',
  'ERAS': <dynamic>[
    'v. Chr.',
    'n. Chr.',
  ],
  'ERANAMES': <dynamic>[
    'viru Christus',
    'no Christus',
  ],
  'NARROWMONTHS': <dynamic>[
    'J',
    'F',
    'M',
    'A',
    'M',
    'J',
    'J',
    'A',
    'S',
    'O',
    'N',
    'D',
  ],
  'STANDALONENARROWMONTHS': <dynamic>[
    'J',
    'F',
    'M',
    'A',
    'M',
    'J',
    'J',
    'A',
    'S',
    'O',
    'N',
    'D',
  ],
  'MONTHS': <dynamic>[
    'Januar',
    'Februar',
    'Mäerz',
    'Abrëll',
    'Mee',
    'Juni',
    'Juli',
    'August',
    'September',
    'Oktober',
    'November',
    'Dezember',
  ],
  'STANDALONEMONTHS': <dynamic>[
    'Januar',
    'Februar',
    'Mäerz',
    'Abrëll',
    'Mee',
    'Juni',
    'Juli',
    'August',
    'September',
    'Oktober',
    'November',
    'Dezember',
  ],
  'SHORTMONTHS': <dynamic>[
    'Jan.',
    'Feb.',
    'Mäe.',
    'Abr.',
    'Mee',
    'Jun.',
    'Jul.',
    'Aug.',
    'Sep.',
    'Okt.',
    'Nov.',
    'Dez.',
  ],
  'STANDALONESHORTMONTHS': <dynamic>[
    'Jan',
    'Feb',
    'Mäe',
    'Abr',
    'Mee',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Okt',
    'Nov',
    'Dez',
  ],
  'WEEKDAYS': <dynamic>[
    'Sonndeg',
    'Méindeg',
    'Dënschdeg',
    'Mëttwoch',
    'Donneschdeg',
    'Freideg',
    'Samschdeg',
  ],
  'STANDALONEWEEKDAYS': <dynamic>[
    'Sonndeg',
    'Méindeg',
    'Dënschdeg',
    'Mëttwoch',
    'Donneschdeg',
    'Freideg',
    'Samschdeg',
  ],
  'SHORTWEEKDAYS': <dynamic>[
    'Son.',
    'Méi.',
    'Dën.',
    'Mët.',
    'Don.',
    'Fre.',
    'Sam.',
  ],
  'STANDALONESHORTWEEKDAYS': <dynamic>[
    'Son',
    'Méi',
    'Dën',
    'Mët',
    'Don',
    'Fre',
    'Sam',
  ],
  'NARROWWEEKDAYS': <dynamic>[
    'S',
    'M',
    'D',
    'M',
    'D',
    'F',
    'S',
  ],
  'STANDALONENARROWWEEKDAYS': <dynamic>[
    'S',
    'M',
    'D',
    'M',
    'D',
    'F',
    'S',
  ],
  'SHORTQUARTERS': <dynamic>[
    'Q1',
    'Q2',
    'Q3',
    'Q4',
  ],
  'QUARTERS': <dynamic>[
    '1. Quartal',
    '2. Quartal',
    '3. Quartal',
    '4. Quartal',
  ],
  'AMPMS': <dynamic>[
    'moies',
    'nomëttes',
  ],
  'DATEFORMATS': <dynamic>[
    'EEEE, d. MMMM y',
    'd. MMMM y',
    'd. MMM y',
    'dd.MM.yy',
  ],
  'TIMEFORMATS': <dynamic>[
    'HH:mm:ss zzzz',
    'HH:mm:ss z',
    'HH:mm:ss',
    'HH:mm',
  ],
  'AVAILABLEFORMATS': null,
  'FIRSTDAYOFWEEK': 0,
  'WEEKENDRANGE': <dynamic>[
    5,
    6,
  ],
  'FIRSTWEEKCUTOFFDAY': 3,
  'DATETIMEFORMATS': <dynamic>[
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
  ],
};

class _LbCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _LbCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'lb';

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: lbLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(lbDateSymbols),
    );

    return SynchronousFuture<CupertinoLocalizations>(
      LbCupertinoLocalizations(
        localeName: localeName,
        decimalFormat: intl.NumberFormat('#,##0.###', 'en'),
        fullYearFormat: intl.DateFormat('y', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        dayFormat: intl.DateFormat.d(localeName),
        singleDigitHourFormat: intl.DateFormat('HH', localeName),
        singleDigitMinuteFormat: intl.DateFormat.m(localeName),
        doubleDigitMinuteFormat: intl.DateFormat('mm', localeName),
        singleDigitSecondFormat: intl.DateFormat.s(localeName),
      ),
    );
  }

  @override
  bool shouldReload(_LbCupertinoLocalizationsDelegate old) => false;
}

class LbCupertinoLocalizations extends GlobalCupertinoLocalizations {
  const LbCupertinoLocalizations({
    super.localeName = 'lb',
    required super.fullYearFormat,
    required super.mediumDateFormat,
    required super.decimalFormat,
    required super.dayFormat,
    required super.singleDigitHourFormat,
    required super.singleDigitMinuteFormat,
    required super.doubleDigitMinuteFormat,
    required super.singleDigitSecondFormat,
  });

  static const LocalizationsDelegate<CupertinoLocalizations> delegate =
      _LbCupertinoLocalizationsDelegate();

  @override
  String get alertDialogLabel => 'Warnung';

  @override
  String get anteMeridiemAbbreviation => 'moies';

  @override
  String get clearButtonLabel => 'Läschen';

  @override
  String get copyButtonLabel => 'Kopéieren';

  @override
  String get cutButtonLabel => 'Ausschneiden';

  @override
  String get datePickerDateOrderString => 'dmy';

  @override
  String get datePickerDateTimeOrderString => 'datum_zäit_daageszäit';

  @override
  String? get datePickerHourSemanticsLabelFew => null;

  @override
  String? get datePickerHourSemanticsLabelMany => null;

  @override
  String? get datePickerHourSemanticsLabelOne => r"$hour Auer";

  @override
  String get datePickerHourSemanticsLabelOther => r"$hour Auer";

  @override
  String? get datePickerHourSemanticsLabelTwo => null;

  @override
  String? get datePickerHourSemanticsLabelZero => null;

  @override
  String? get datePickerMinuteSemanticsLabelFew => null;

  @override
  String? get datePickerMinuteSemanticsLabelMany => null;

  @override
  String? get datePickerMinuteSemanticsLabelOne => '1 Minutt';

  @override
  String get datePickerMinuteSemanticsLabelOther => r'$minute Minutten';

  @override
  String? get datePickerMinuteSemanticsLabelTwo => null;

  @override
  String? get datePickerMinuteSemanticsLabelZero => null;

  @override
  String get lookUpButtonLabel => 'Nokuken';

  @override
  String get menuDismissLabel => 'Menü zoumaachen';

  @override
  String get modalBarrierDismissLabel => 'Ofbriechen';

  @override
  String get noSpellCheckReplacementsLabel => 'Keng Ersetzunge fonnt';

  @override
  String get pasteButtonLabel => 'Asetzen';

  @override
  String get postMeridiemAbbreviation => 'nomëttes';

  @override
  String get searchTextFieldPlaceholderLabel => 'Sichen';

  @override
  String get searchWebButtonLabel => 'Internet duerchsichen';

  @override
  String get selectAllButtonLabel => 'Alles auswielen';

  @override
  String get shareButtonLabel => 'Deelen...';

  @override
  String get tabSemanticsLabelRaw => r'Tab $tabIndex vun $tabCount';

  @override
  String? get timerPickerHourLabelFew => null;

  @override
  String? get timerPickerHourLabelMany => null;

  @override
  String? get timerPickerHourLabelOne => 'Stonn';

  @override
  String get timerPickerHourLabelOther => 'Stonnen';

  @override
  String? get timerPickerHourLabelTwo => null;

  @override
  String? get timerPickerHourLabelZero => null;

  @override
  String? get timerPickerMinuteLabelFew => null;

  @override
  String? get timerPickerMinuteLabelMany => null;

  @override
  String? get timerPickerMinuteLabelOne => 'Min.';

  @override
  String get timerPickerMinuteLabelOther => 'Min.';

  @override
  String? get timerPickerMinuteLabelTwo => null;

  @override
  String? get timerPickerMinuteLabelZero => null;

  @override
  String? get timerPickerSecondLabelFew => null;

  @override
  String? get timerPickerSecondLabelMany => null;

  @override
  String? get timerPickerSecondLabelOne => 'Sek.';

  @override
  String get timerPickerSecondLabelOther => 'Sek.';

  @override
  String? get timerPickerSecondLabelTwo => null;

  @override
  String? get timerPickerSecondLabelZero => null;

  @override
  String get todayLabel => 'Haut';
}
