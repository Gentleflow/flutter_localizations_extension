import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

class _MiMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _MiMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'mi';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: miLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(miDateSymbols),
    );

    return SynchronousFuture<MaterialLocalizations>(
      MiMaterialLocalizations(
        localeName: localeName,
        decimalFormat: intl.NumberFormat('#,##0.###', 'en'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'en'),
        fullYearFormat: intl.DateFormat('y', localeName),
        compactDateFormat: intl.DateFormat('yMd', localeName),
        shortDateFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        shortMonthDayFormat: intl.DateFormat('MMM d', localeName),
      ),
    );
  }

  @override
  bool shouldReload(_MiMaterialLocalizationsDelegate old) => false;
}

class MiMaterialLocalizations extends GlobalMaterialLocalizations {
  const MiMaterialLocalizations({
    super.localeName = 'mi',
    required super.fullYearFormat,
    required super.compactDateFormat,
    required super.shortDateFormat,
    required super.mediumDateFormat,
    required super.longDateFormat,
    required super.yearMonthFormat,
    required super.shortMonthDayFormat,
    required super.decimalFormat,
    required super.twoDigitZeroPaddedFormat,
  });

  @override
  String get moreButtonTooltip => r'Atu anō';

  @override
  String get aboutListTileTitleRaw => r'Mō $applicationName';

  @override
  String get alertDialogLabel => r'Whakatūpato';

  @override
  String get anteMeridiemAbbreviation => r'AM';

  @override
  String get backButtonTooltip => r'Hoki';

  @override
  String get cancelButtonLabel => r'WHAKAKORE';

  @override
  String get closeButtonLabel => r'KATI';

  @override
  String get closeButtonTooltip => r'Kati';

  @override
  String get collapsedIconTapHint => r'Whakawhānui';

  @override
  String get continueButtonLabel => r'HAERE TONU';

  @override
  String get copyButtonLabel => r'TĀRUA';

  @override
  String get cutButtonLabel => r'TAPAHI';

  @override
  String get deleteButtonTooltip => r'MUKU';

  @override
  String get dialogLabel => r'Kōrerorero';

  @override
  String get drawerLabel => r'Tahua whakatere';

  @override
  String get expandedIconTapHint => r'Whakaheke';

  @override
  String get firstPageTooltip => r'Whārangi tuatahi';

  @override
  String get hideAccountsLabel => r'Huna pūkete';

  @override
  String get lastPageTooltip => r'Whārangi whakamutunga';

  @override
  String get licensesPageTitle => r'Raihana';

  @override
  String get modalBarrierDismissLabel => r'Whakakore';

  @override
  String get nextMonthTooltip => r'Marama e whai ake';

  @override
  String get nextPageTooltip => r'Whārangi e whai ake';

  @override
  String get okButtonLabel => r'ĀE';

  @override
  String get openAppDrawerTooltip => r'Huaki tahua whakatere';

  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow o $rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      r'$firstRow–$lastRow neke atu i te $rowCount';

  @override
  String get pasteButtonLabel => r'WHAKAPIRI';

  @override
  String get popupMenuLabel => r'Tahua pahū ake';

  @override
  String get postMeridiemAbbreviation => r'PM';

  @override
  String get previousMonthTooltip => r'Marama o mua';

  @override
  String get previousPageTooltip => r'Whārangi o mua';

  @override
  String get refreshIndicatorSemanticLabel => r'Tāmata anō';

  @override
  String? get remainingTextFieldCharacterCountFew => null;

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String get remainingTextFieldCharacterCountOne => r'1 pūāhua e toe ana';

  @override
  String get remainingTextFieldCharacterCountOther =>
      r'$remainingCount ngā pūāhua e toe ana';

  @override
  String? get remainingTextFieldCharacterCountTwo =>
      r'E 2 ngā pūāhua e toe ana';

  @override
  String get remainingTextFieldCharacterCountZero =>
      r'Kāore he pūāhua e toe ana';

  @override
  String get reorderItemDown => r'Neke ki raro';

  @override
  String get reorderItemLeft => r'Neke ki maui';

  @override
  String get reorderItemRight => r'Neke ki matau';

  @override
  String get reorderItemToEnd => r'Neke ki te mutunga';

  @override
  String get reorderItemToStart => r'Neke ki te tīmatanga';

  @override
  String get reorderItemUp => r'Neke ki runga';

  @override
  String get rowsPerPageTitle => r'Ngā rārangi ia whārangi:';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => r'Rapu';

  @override
  String get selectAllButtonLabel => r'TĪPAKO KATOA';

  @override
  String? get selectedRowCountTitleFew => null;

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String get selectedRowCountTitleOne => r'Kua tīpakohia 1 tūemi';

  @override
  String get selectedRowCountTitleOther =>
      r'Kua tīpakohia $selectedRowCount ngā tūemi';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String get selectedRowCountTitleZero => r'Kāore he tūemi i tīpakohia';

  @override
  String get showAccountsLabel => r'Whakaatu pūkete';

  @override
  String get showMenuTooltip => r'Whakaatu tahua';

  @override
  String get signedInLabel => r'Kua takiuru';

  @override
  String get tabLabelRaw => r'Ripa $tabIndex o $tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.h_colon_mm_space_a;

  @override
  String get timePickerHourModeAnnouncement => r'Tīpako haora';

  @override
  String get timePickerMinuteModeAnnouncement => r'Tīpako meneti';

  @override
  String get viewLicensesButtonLabel => r'TIRO RAIHANA';

  @override
  List<String> get narrowWeekdays =>
      const <String>['T', 'M', 'T', 'W', 'P', 'M', 'H'];

  @override
  int get firstDayOfWeekIndex => 1;

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _MiMaterialLocalizationsDelegate();

  @override
  String get calendarModeButtonLabel => r'Huri ki te maramataka';

  @override
  String get dateHelpText => r'rr/mm/tttt';

  @override
  String get dateInputLabel => r'Tāuru Rā';

  @override
  String get dateOutOfRangeLabel => r'Kei waho o te awhe.';

  @override
  String get datePickerHelpText => r'TĪPAKO RĀ';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'Rā mutunga $fullDate';

  @override
  String get dateRangeEndLabel => r'Rā Mutunga';

  @override
  String get dateRangePickerHelpText => 'TĪPAKO AWHE';

  @override
  String get dateRangeStartDateSemanticLabelRaw => 'Rā tīmata \$fullDate';

  @override
  String get dateRangeStartLabel => 'Rā Tīmata';

  @override
  String get dateSeparator => '/';

  @override
  String get dialModeButtonLabel => 'Huri ki te aratau kōwhiri waea';

  @override
  String get inputDateModeButtonLabel => 'Huri ki te tāuru';

  @override
  String get inputTimeModeButtonLabel => 'Huri ki te aratau tāuru kuputuhi';

  @override
  String get invalidDateFormatLabel => 'Hōputu muhu.';

  @override
  String get invalidDateRangeLabel => 'Awhe muhu.';

  @override
  String get invalidTimeLabel => 'Tāuru wā tika';

  @override
  String get licensesPackageDetailTextOther => '\$licenseCount ngā raihana';

  @override
  String get saveButtonLabel => 'TIAKI';

  @override
  String get selectYearSemanticsLabel => 'Tīpako tau';

  @override
  String get timePickerDialHelpText => 'TĪPAKO WĀ';

  @override
  String get timePickerHourLabel => 'Haora';

  @override
  String get timePickerInputHelpText => 'TĀURU WĀ';

  @override
  String get timePickerMinuteLabel => 'Meneti';

  @override
  String get unspecifiedDate => 'Rā';

  @override
  String get unspecifiedDateRange => 'Awhe rā';

  @override
  String get bottomSheetLabel => 'Whārangi Raro';

  @override
  String get collapsedHint => 'Kua whakawhānuitia';

  @override
  String get expandedHint => 'Kua whakahekea';

  @override
  String get expansionTileCollapsedHint => 'pāwhiri rua ki te whakawhānui';

  @override
  String get expansionTileCollapsedTapHint => 'Whakawhānui mō ētahi atu kōrero';

  @override
  String get expansionTileExpandedHint => 'pāwhiri rua ki te whakaheke';

  @override
  String get expansionTileExpandedTapHint => 'Whakaheke';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'AltGr';

  @override
  String get keyboardKeyBackspace => 'Whakamuri';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'Heke Hongere';

  @override
  String get keyboardKeyChannelUp => 'Piki Hongere';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Muku';

  @override
  String get keyboardKeyEject => 'Tuwha';

  @override
  String get keyboardKeyEnd => 'Mutunga';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'Kāinga';

  @override
  String get keyboardKeyInsert => 'Kōkuhu';

  @override
  String get keyboardKeyMeta => 'Meta';

  @override
  String get keyboardKeyMetaMacOs => 'Tohutohu';

  @override
  String get keyboardKeyMetaWindows => 'Win';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad1 => 'Num 1';

  @override
  String get keyboardKeyNumpad2 => 'Num 2';

  @override
  String get keyboardKeyNumpad3 => 'Num 3';

  @override
  String get keyboardKeyNumpad4 => 'Num 4';

  @override
  String get keyboardKeyNumpad5 => 'Num 5';

  @override
  String get keyboardKeyNumpad6 => 'Num 6';

  @override
  String get keyboardKeyNumpad7 => 'Num 7';

  @override
  String get keyboardKeyNumpad8 => 'Num 8';

  @override
  String get keyboardKeyNumpad9 => 'Num 9';

  @override
  String get keyboardKeyNumpad0 => 'Num 0';

  @override
  String get keyboardKeyNumpadAdd => 'Num +';

  @override
  String get keyboardKeyNumpadComma => 'Num ,';

  @override
  String get keyboardKeyNumpadDecimal => 'Num .';

  @override
  String get keyboardKeyNumpadDivide => 'Num /';

  @override
  String get keyboardKeyNumpadEnter => 'Num Enter';

  @override
  String get keyboardKeyNumpadEqual => 'Num =';

  @override
  String get keyboardKeyNumpadMultiply => 'Num *';

  @override
  String get keyboardKeyNumpadParenLeft => 'Num (';

  @override
  String get keyboardKeyNumpadParenRight => 'Num )';

  @override
  String get keyboardKeyNumpadSubtract => 'Num -';

  @override
  String get keyboardKeyPageDown => 'PgDown';

  @override
  String get keyboardKeyPageUp => 'PgUp';

  @override
  String get keyboardKeyPower => 'Mana';

  @override
  String get keyboardKeyPowerOff => 'Whakaweto';

  @override
  String get keyboardKeyPrintScreen => 'PrintScreen';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'Tīpako';

  @override
  String get keyboardKeyShift => 'Shift';

  @override
  String get keyboardKeySpace => 'Mokowā';

  @override
  String get lookUpButtonLabel => 'Tiro ake';

  @override
  String get menuBarMenuLabel => 'Tahua pae tahua';

  @override
  String get menuDismissLabel => 'Whakakore tahua';

  @override
  String get scanTextButtonLabel => 'Matawai kuputuhi';

  @override
  String get scrimLabel => 'Ārai';

  @override
  String get scrimOnTapHintRaw => r'Kati $modalRouteContentName';

  @override
  String get searchWebButtonLabel => 'Rapu Ipurangi';

  @override
  String get shareButtonLabel => 'Tuari';

  @override
  String get currentDateLabel => 'i tēnei rā';
}
