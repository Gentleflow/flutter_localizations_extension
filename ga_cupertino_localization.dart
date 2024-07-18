import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

// currently a clone of the en_IE locals patterns as meaning is unclear
const gaLocaleDatePatterns = {
  'd': 'd',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
  'LLLL': 'LLLL',
  'M': 'L',
  'Md': 'd/M',
  'MEd': 'EEE, d/M',
  'MMM': 'LLL',
  'MMMd': 'd MMM',
  'MMMEd': 'EEE, d MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd MMMM',
  'MMMMEEEEd': 'EEEE, d MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'MM/y',
  'yMd': 'd/M/y',
  'yMEd': 'EEE, d/M/y',
  'yMMM': 'MMM y',
  'yMMMd': 'd MMM y',
  'yMMMEd': 'EEE d MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd MMMM y',
  'yMMMMEEEEd': 'EEEE d MMMM y',
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

/// A custom set of date symbols for the `ga` locale.

const gaDateSymbols = {
  'NAME': 'ga',
  'ERAS': <dynamic>[
    'RC',
    'AD',
  ],
  'ERANAMES': <dynamic>[
    'Roimh Chríost',
    'Anno Domini',
  ],
  'NARROWMONTHS': <dynamic>[
    'E',
    'F',
    'M',
    'A',
    'B',
    'M',
    'I',
    'L',
    'MF',
    'DF',
    'S',
    'N',
  ],
  'STANDALONENARROWMONTHS': <dynamic>[
    'E',
    'F',
    'M',
    'A',
    'B',
    'M',
    'I',
    'L',
    'MF',
    'DF',
    'S',
    'N',
  ],
  'MONTHS': <dynamic>[
    'Eanáir',
    'Feabhra',
    'Márta',
    'Aibreán',
    'Bealtaine',
    'Meitheamh',
    'Iúil',
    'Lúnasa',
    'Meán Fómhair',
    'Deireadh Fómhair',
    'Samhain',
    'Nollaig',
  ],
  'STANDALONEMONTHS': <dynamic>[
    'Eanáir',
    'Feabhra',
    'Márta',
    'Aibreán',
    'Bealtaine',
    'Meitheamh',
    'Iúil',
    'Lúnasa',
    'Meán Fómhair',
    'Deireadh Fómhair',
    'Samhain',
    'Nollaig',
  ],
  'SHORTMONTHS': <dynamic>[
    'Ean',
    'Feaḃ',
    'Már',
    'Aib',
    'Beal',
    'Meiṫ',
    'Iúil',
    'Lún',
    'MFó',
    'DFó',
    'Saṁ',
    'Nol',
  ],
  'STANDALONESHORTMONTHS': <dynamic>[
    'Ean',
    'Feaḃ',
    'Már',
    'Aib',
    'Beal',
    'Meiṫ',
    'Iúil',
    'Lún',
    'MFó',
    'DFó',
    'Saṁ',
    'Nol',
  ],
  'WEEKDAYS': <dynamic>[
    'Dé Domhnaigh',
    'Dé Luain',
    'Dé Máirt',
    'Dé Céadaoin',
    'Déardaoin',
    'Dé hAoine',
    'Dé Sathairn',
  ],
  'STANDALONEWEEKDAYS': <dynamic>[
    'Dé Domhnaigh',
    'Dé Luain',
    'Dé Máirt',
    'Dé Céadaoin',
    'Déardaoin',
    'Dé hAoine',
    'Dé Sathairn',
  ],
  'SHORTWEEKDAYS': <dynamic>[
    'Doṁ',
    'Lua',
    'Mái',
    'Céa',
    'Déa',
    'Aoi',
    'Saṫ',
  ],
  'STANDALONESHORTWEEKDAYS': <dynamic>[
    'Doṁ',
    'Lua',
    'Mái',
    'Céa',
    'Déa',
    'Aoi',
    'Saṫ',
  ],
  'NARROWWEEKDAYS': <dynamic>[
    'D',
    'L',
    'M',
    'C',
    'D',
    'A',
    'S',
  ],
  'STANDALONENARROWWEEKDAYS': <dynamic>[
    'D',
    'L',
    'M',
    'C',
    'D',
    'A',
    'S',
  ],
  'SHORTQUARTERS': <dynamic>[
    '1úR',
    '2úR',
    '3úR',
    '4úR',
  ],
  'QUARTERS': <dynamic>[
    '1ú ráithe',
    '2ú ráithe',
    '3ú ráithe',
    '4ú ráithe',
  ],
  'AMPMS': <dynamic>[
    'r.n.',
    'i.n.',
  ],
  'DATEFORMATS': <dynamic>[
    'EEEE d MMMM y',
    'd MMMM y',
    'd MMM y',
    'dd/MM/y',
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
    '{1}, {0}',
    '{1}, {0}',
    '{1} {0}',
    '{1} {0}',
  ],
};

class _GaCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _GaCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ga';

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    // The locale (in this case `ga`) needs to be initialized into the custom
    // date symbols and patterns setup that Flutter uses.
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: gaLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(gaDateSymbols),
    );

    return SynchronousFuture<CupertinoLocalizations>(
      GaCupertinoLocalizations(
        localeName: localeName,
        decimalFormat: intl.NumberFormat('#,##0.###', 'en'),
        // DateFormat here will use the symbols and patterns provided in the
        // `date_symbol_data_custom.initializeDateFormattingCustom` call above.
        // However, an alternative is to simply use a supported locale's
        // DateFormat symbols, similar to NumberFormat above.
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
  bool shouldReload(_GaCupertinoLocalizationsDelegate old) => false;
}
// #enddocregion Delegate

/// A custom set of localizations for the 'ga' locale.
class GaCupertinoLocalizations extends GlobalCupertinoLocalizations {
  const GaCupertinoLocalizations({
    super.localeName = 'ga',
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
      _GaCupertinoLocalizationsDelegate();

  @override
  String get alertDialogLabel => 'Foláireamh';

  @override
  String get anteMeridiemAbbreviation => 'r.n.';

  @override
  String get clearButtonLabel => 'Glan';

  @override
  String get copyButtonLabel => 'Cóipeáil';

  @override
  String get cutButtonLabel => 'Gearr';

  @override
  String get datePickerDateOrderString => 'lbm';

  @override
  String get datePickerDateTimeOrderString => 'dáta_am_tréimhseLae';

  @override
  String? get datePickerHourSemanticsLabelFew => null;

  @override
  String? get datePickerHourSemanticsLabelMany => null;

  @override
  String? get datePickerHourSemanticsLabelOne => r"$hour a chlog";

  @override
  String get datePickerHourSemanticsLabelOther => r"$hour a chlog";

  @override
  String? get datePickerHourSemanticsLabelTwo => null;

  @override
  String? get datePickerHourSemanticsLabelZero => null;

  @override
  String? get datePickerMinuteSemanticsLabelFew => null;

  @override
  String? get datePickerMinuteSemanticsLabelMany => null;

  @override
  String? get datePickerMinuteSemanticsLabelOne => '1 nóiméad';

  @override
  String get datePickerMinuteSemanticsLabelOther => r'$minute nóiméad';

  @override
  String? get datePickerMinuteSemanticsLabelTwo => null;

  @override
  String? get datePickerMinuteSemanticsLabelZero => null;

  @override
  String get lookUpButtonLabel => 'Cuardaigh';

  @override
  String get menuDismissLabel => 'Dún roghchlár';

  @override
  String get modalBarrierDismissLabel => 'Dún';

  @override
  String get noSpellCheckReplacementsLabel => 'Níor aimsíodh aon ionadaithe';

  @override
  String get pasteButtonLabel => 'Greamaigh';

  @override
  String get postMeridiemAbbreviation => 'i.n.';

  @override
  String get searchTextFieldPlaceholderLabel => 'Cuardaigh';

  @override
  String get searchWebButtonLabel => 'Cuardaigh Gréasán';

  @override
  String get selectAllButtonLabel => 'Roghnaigh Uile';

  @override
  String get shareButtonLabel => 'Comhroinn...';

  @override
  String get tabSemanticsLabelRaw => r'Cluaisín $tabIndex as $tabCount';

  @override
  String? get timerPickerHourLabelFew => null;

  @override
  String? get timerPickerHourLabelMany => null;

  @override
  String? get timerPickerHourLabelOne => 'uair';

  @override
  String get timerPickerHourLabelOther => 'uair';

  @override
  String? get timerPickerHourLabelTwo => null;

  @override
  String? get timerPickerHourLabelZero => null;

  @override
  String? get timerPickerMinuteLabelFew => null;

  @override
  String? get timerPickerMinuteLabelMany => null;

  @override
  String? get timerPickerMinuteLabelOne => 'nóim.';

  @override
  String get timerPickerMinuteLabelOther => 'nóim.';

  @override
  String? get timerPickerMinuteLabelTwo => null;

  @override
  String? get timerPickerMinuteLabelZero => null;

  @override
  String? get timerPickerSecondLabelFew => null;

  @override
  String? get timerPickerSecondLabelMany => null;

  @override
  String? get timerPickerSecondLabelOne => 'soic.';

  @override
  String get timerPickerSecondLabelOther => 'soic.';

  @override
  String? get timerPickerSecondLabelTwo => null;

  @override
  String? get timerPickerSecondLabelZero => null;

  @override
  String get todayLabel => 'Inniu';
}
