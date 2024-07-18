import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

const miLocaleDatePatterns = {
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
  'QQQ': 'HHH',
  'QQQQ': 'HHHH',
  'y': 'y',
  'yM': 'M/y',
  'yMd': 'd/M/y',
  'yMEd': 'EEE, d/M/y',
  'yMMM': 'MMM y',
  'yMMMd': 'd MMM y',
  'yMMMEd': 'EEE d MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd MMMM y',
  'yMMMMEEEEd': 'EEEE d MMMM y',
  'yQQQ': 'HHH y',
  'yQQQQ': 'HHHH y',
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

const miDateSymbols = {
  'NAME': 'mi',
  'ERAS': <dynamic>[
    'I.M.',
    'C.E.',
  ],
  'ERANAMES': <dynamic>[
    'I mua o te Karaiti',
    'Tau o te Ariki',
  ],
  'NARROWMONTHS': <dynamic>[
    'H',
    'P',
    'M',
    'Ā',
    'M',
    'P',
    'H',
    'H',
    'M',
    'O',
    'W',
    'H',
  ],
  'STANDALONENARROWMONTHS': <dynamic>[
    'H',
    'P',
    'M',
    'Ā',
    'M',
    'P',
    'H',
    'H',
    'M',
    'O',
    'W',
    'H',
  ],
  'MONTHS': <dynamic>[
    'Hānuere',
    'Pēpuere',
    'Māehe',
    'Āperira',
    'Mei',
    'Hune',
    'Hūrae',
    'Ākuhata',
    'Hepetema',
    'Oketopa',
    'Noema',
    'Tīhema',
  ],
  'STANDALONEMONTHS': <dynamic>[
    'Hānuere',
    'Pēpuere',
    'Māehe',
    'Āperira',
    'Mei',
    'Hune',
    'Hūrae',
    'Ākuhata',
    'Hepetema',
    'Oketopa',
    'Noema',
    'Tīhema',
  ],
  'SHORTMONTHS': <dynamic>[
    'Hān',
    'Pēp',
    'Māe',
    'Āpe',
    'Mei',
    'Hun',
    'Hūr',
    'Āku',
    'Hep',
    'Oke',
    'Noe',
    'Tīh',
  ],
  'STANDALONESHORTMONTHS': <dynamic>[
    'Hān',
    'Pēp',
    'Māe',
    'Āpe',
    'Mei',
    'Hun',
    'Hūr',
    'Āku',
    'Hep',
    'Oke',
    'Noe',
    'Tīh',
  ],
  'WEEKDAYS': <dynamic>[
    'Rātapu',
    'Mane',
    'Tūrei',
    'Wenerei',
    'Tāite',
    'Paraire',
    'Hātarei',
  ],
  'STANDALONEWEEKDAYS': <dynamic>[
    'Rātapu',
    'Mane',
    'Tūrei',
    'Wenerei',
    'Tāite',
    'Paraire',
    'Hātarei',
  ],
  'SHORTWEEKDAYS': <dynamic>[
    'Tāp',
    'Man',
    'Tūr',
    'Wen',
    'Tāi',
    'Par',
    'Hāt',
  ],
  'STANDALONESHORTWEEKDAYS': <dynamic>[
    'Tāp',
    'Man',
    'Tūr',
    'Wen',
    'Tāi',
    'Par',
    'Hāt',
  ],
  'NARROWWEEKDAYS': <dynamic>[
    'T',
    'M',
    'T',
    'W',
    'T',
    'P',
    'H',
  ],
  'STANDALONENARROWWEEKDAYS': <dynamic>[
    'T',
    'M',
    'T',
    'W',
    'T',
    'P',
    'H',
  ],
  'SHORTQUARTERS': <dynamic>[
    'HW1',
    'HW2',
    'HW3',
    'HW4',
  ],
  'QUARTERS': <dynamic>[
    'Hauwhā tuatahi',
    'Hauwhā tuarua',
    'Hauwhā tuatoru',
    'Hauwhā tuawhā',
  ],
  'AMPMS': <dynamic>[
    'AM',
    'PM',
  ],
  'DATEFORMATS': <dynamic>[
    'EEEE, d MMMM y',
    'd MMMM y',
    'd MMM y',
    'dd-MM-y',
  ],
  'TIMEFORMATS': <dynamic>[
    'h:mm:ss a zzzz',
    'h:mm:ss a z',
    'h:mm:ss a',
    'h:mm a',
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

class _MiCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _MiCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'mi';

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: miLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(miDateSymbols),
    );

    return SynchronousFuture<CupertinoLocalizations>(
      MiCupertinoLocalizations(
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
  bool shouldReload(_MiCupertinoLocalizationsDelegate old) => false;
}

class MiCupertinoLocalizations extends GlobalCupertinoLocalizations {
  const MiCupertinoLocalizations({
    super.localeName = 'mi',
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
      _MiCupertinoLocalizationsDelegate();

  @override
  String get alertDialogLabel => 'Whakatūpato';

  @override
  String get anteMeridiemAbbreviation => 'AM';

  @override
  String get clearButtonLabel => 'Ūkui';

  @override
  String get copyButtonLabel => 'Tārua';

  @override
  String get cutButtonLabel => 'Tapahi';

  @override
  String get datePickerDateOrderString => 'rmt';

  @override
  String get datePickerDateTimeOrderString => 'rā_wā_wāhanga o te rā';

  @override
  String? get datePickerHourSemanticsLabelFew => null;

  @override
  String? get datePickerHourSemanticsLabelMany => null;

  @override
  String? get datePickerHourSemanticsLabelOne => r"$hour karaka";

  @override
  String get datePickerHourSemanticsLabelOther => r"$hour karaka";

  @override
  String? get datePickerHourSemanticsLabelTwo => null;

  @override
  String? get datePickerHourSemanticsLabelZero => null;

  @override
  String? get datePickerMinuteSemanticsLabelFew => null;

  @override
  String? get datePickerMinuteSemanticsLabelMany => null;

  @override
  String? get datePickerMinuteSemanticsLabelOne => '1 meneti';

  @override
  String get datePickerMinuteSemanticsLabelOther => r'$minute meneti';

  @override
  String? get datePickerMinuteSemanticsLabelTwo => null;

  @override
  String? get datePickerMinuteSemanticsLabelZero => null;

  @override
  String get lookUpButtonLabel => 'Rapu';

  @override
  String get menuDismissLabel => 'Kati tahua';

  @override
  String get modalBarrierDismissLabel => 'Whakakore';

  @override
  String get noSpellCheckReplacementsLabel => 'Kāore he whakakapi i kitea';

  @override
  String get pasteButtonLabel => 'Whakapiri';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get searchTextFieldPlaceholderLabel => 'Rapu';

  @override
  String get searchWebButtonLabel => 'Rapu Ipurangi';

  @override
  String get selectAllButtonLabel => 'Tīpako Katoa';

  @override
  String get shareButtonLabel => 'Tuari...';

  @override
  String get tabSemanticsLabelRaw => r'Ripa $tabIndex o $tabCount';

  @override
  String? get timerPickerHourLabelFew => null;

  @override
  String? get timerPickerHourLabelMany => null;

  @override
  String? get timerPickerHourLabelOne => 'haora';

  @override
  String get timerPickerHourLabelOther => 'haora';

  @override
  String? get timerPickerHourLabelTwo => null;

  @override
  String? get timerPickerHourLabelZero => null;

  @override
  String? get timerPickerMinuteLabelFew => null;

  @override
  String? get timerPickerMinuteLabelMany => null;

  @override
  String? get timerPickerMinuteLabelOne => 'men.';

  @override
  String get timerPickerMinuteLabelOther => 'men.';

  @override
  String? get timerPickerMinuteLabelTwo => null;

  @override
  String? get timerPickerMinuteLabelZero => null;

  @override
  String? get timerPickerSecondLabelFew => null;

  @override
  String? get timerPickerSecondLabelMany => null;

  @override
  String? get timerPickerSecondLabelOne => 'hēk.';

  @override
  String get timerPickerSecondLabelOther => 'hēk.';

  @override
  String? get timerPickerSecondLabelTwo => null;

  @override
  String? get timerPickerSecondLabelZero => null;

  @override
  String get todayLabel => 'Tēnei rā';
}
