import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

class _LbMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _LbMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'lb';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: lbLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(lbDateSymbols),
    );

    return SynchronousFuture<MaterialLocalizations>(
      LbMaterialLocalizations(
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
  bool shouldReload(_LbMaterialLocalizationsDelegate old) => false;
}

class LbMaterialLocalizations extends GlobalMaterialLocalizations {
  const LbMaterialLocalizations({
    super.localeName = 'lb',
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
  String get moreButtonTooltip => r'Méi';

  @override
  String get aboutListTileTitleRaw => r'Iwwer $applicationName';

  @override
  String get alertDialogLabel => r'Warnung';

  @override
  String get anteMeridiemAbbreviation => r'moies';

  @override
  String get backButtonTooltip => r'Zeréck';

  @override
  String get cancelButtonLabel => r'OFBRIECHEN';

  @override
  String get closeButtonLabel => r'ZOUMAACHEN';

  @override
  String get closeButtonTooltip => r'Zoumaachen';

  @override
  String get collapsedIconTapHint => r'Ausklappen';

  @override
  String get continueButtonLabel => r'WEIDER';

  @override
  String get copyButtonLabel => r'KOPÉIEREN';

  @override
  String get cutButtonLabel => r'AUSSCHNEIDEN';

  @override
  String get deleteButtonTooltip => r'LÄSCHEN';

  @override
  String get dialogLabel => r'Dialog';

  @override
  String get drawerLabel => r'Navigatiounsmenü';

  @override
  String get expandedIconTapHint => r'Zesummeklappen';

  @override
  String get firstPageTooltip => r'Éischt Säit';

  @override
  String get hideAccountsLabel => r'Konten verstoppen';

  @override
  String get lastPageTooltip => r'Lescht Säit';

  @override
  String get licensesPageTitle => r'Lizenzen';

  @override
  String get modalBarrierDismissLabel => r'Ofbriechen';

  @override
  String get nextMonthTooltip => r'Nächste Mount';

  @override
  String get nextPageTooltip => r'Nächst Säit';

  @override
  String get okButtonLabel => r'OK';

  @override
  String get openAppDrawerTooltip => r'Navigatiounsmenü opmaachen';

  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow vun $rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      r'$firstRow–$lastRow vun ongeféier $rowCount';

  @override
  String get pasteButtonLabel => r'ASETZEN';

  @override
  String get popupMenuLabel => r'Popup-Menü';

  @override
  String get postMeridiemAbbreviation => r'nomëttes';

  @override
  String get previousMonthTooltip => r'Virege Mount';

  @override
  String get previousPageTooltip => r'Vireg Säit';

  @override
  String get refreshIndicatorSemanticLabel => r'Aktualiséieren';

  @override
  String? get remainingTextFieldCharacterCountFew => null;

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String get remainingTextFieldCharacterCountOne => r'Nach 1 Zeechen';

  @override
  String get remainingTextFieldCharacterCountOther =>
      r'Nach $remainingCount Zeechen';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String get remainingTextFieldCharacterCountZero => r'Keng Zeeche méi';

  @override
  String get reorderItemDown => r'No ënne beweegen';

  @override
  String get reorderItemLeft => r'No lénks beweegen';

  @override
  String get reorderItemRight => r'No riets beweegen';

  @override
  String get reorderItemToEnd => r'Un den Enn beweegen';

  @override
  String get reorderItemToStart => r'Un den Ufank beweegen';

  @override
  String get reorderItemUp => r'No uewe beweegen';

  @override
  String get rowsPerPageTitle => r'Zeile pro Säit:';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => r'Sichen';

  @override
  String get selectAllButtonLabel => r'ALLES AUSWIELEN';

  @override
  String? get selectedRowCountTitleFew => null;

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String get selectedRowCountTitleOne => r'1 Element ausgewielt';

  @override
  String get selectedRowCountTitleOther =>
      r'$selectedRowCount Elementer ausgewielt';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String get selectedRowCountTitleZero => r'Keng Elementer ausgewielt';

  @override
  String get showAccountsLabel => r'Konte weisen';

  @override
  String get showMenuTooltip => r'Menü weisen';

  @override
  String get signedInLabel => r'Ageloggt';

  @override
  String get tabLabelRaw => r'Tab $tabIndex vun $tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.HH_colon_mm;

  @override
  String get timePickerHourModeAnnouncement => r'Stonnen auswielen';

  @override
  String get timePickerMinuteModeAnnouncement => r'Minutten auswielen';

  @override
  String get viewLicensesButtonLabel => r'LIZENZEN UKUCKEN';

  @override
  List<String> get narrowWeekdays =>
      const <String>['S', 'M', 'D', 'M', 'D', 'F', 'S'];

  @override
  int get firstDayOfWeekIndex => 1;

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _LbMaterialLocalizationsDelegate();

  @override
  String get calendarModeButtonLabel => r'Op Kalenner wiesselen';

  @override
  String get dateHelpText => r'dd.mm.yyyy';

  @override
  String get dateInputLabel => r'Datum aginn';

  @override
  String get dateOutOfRangeLabel => r'Ausserhalb vum Beräich.';

  @override
  String get datePickerHelpText => r'DATUM AUSWIELEN';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'Enddatum $fullDate';

  @override
  String get dateRangeEndLabel => r'Enddatum';

  @override
  String get dateRangePickerHelpText => r'ZÄITRAUM AUSWIELEN';

  @override
  String get dateRangeStartDateSemanticLabelRaw => r'Startdatum $fullDate';

  @override
  String get dateRangeStartLabel => r'Startdatum';

  @override
  String get dateSeparator => '.';

  @override
  String get dialModeButtonLabel => r'Op Zifferblatmodus wiesselen';

  @override
  String get inputDateModeButtonLabel => r'Op Textagab wiesselen';

  @override
  String get inputTimeModeButtonLabel => r'Op Textagabmodus wiesselen';

  @override
  String get invalidDateFormatLabel => r'Ongültegt Format.';

  @override
  String get invalidDateRangeLabel => r'Ongültege Beräich.';

  @override
  String get invalidTimeLabel => r'Gëlteg Zäit aginn';

  @override
  String get licensesPackageDetailTextOther => r'$licenseCount Lizenzen';

  @override
  String get saveButtonLabel => r'SPÄICHEREN';

  @override
  String get selectYearSemanticsLabel => r'Joer auswielen';

  @override
  String get timePickerDialHelpText => r'ZÄIT AUSWIELEN';

  @override
  String get timePickerHourLabel => r'Stonn';

  @override
  String get timePickerInputHelpText => r'ZÄIT AGINN';

  @override
  String get timePickerMinuteLabel => r'Minutt';

  @override
  String get unspecifiedDate => r'Datum';

  @override
  String get unspecifiedDateRange => r'Datumszäitraum';

  @override
  String get bottomSheetLabel => r'Ënneschten Abléck';

  @override
  String get collapsedHint => r'Ausgeklappt';

  @override
  String get currentDateLabel => r'Haut';

  @override
  String get expandedHint => r'Zesummegeklappt';

  @override
  String get expansionTileCollapsedHint => r'zweemol tippen fir auszeklappen';

  @override
  String get expansionTileCollapsedTapHint =>
      r'Ausklappen fir méi Detailer ze weisen';

  @override
  String get expansionTileExpandedHint =>
      r'zweemol tippen fir zesummenzeklappen';

  @override
  String get expansionTileExpandedTapHint => r'Zesummeklappen';

  @override
  String get keyboardKeyAlt => r'Alt';

  @override
  String get keyboardKeyAltGraph => r'AltGr';

  @override
  String get keyboardKeyBackspace => r'Réckschrëtt';

  @override
  String get keyboardKeyCapsLock => r'Caps Lock';

  @override
  String get keyboardKeyChannelDown => r'Kanal erof';

  @override
  String get keyboardKeyChannelUp => r'Kanal erop';

  @override
  String get keyboardKeyControl => r'Ctrl';

  @override
  String get keyboardKeyDelete => r'Läschen';

  @override
  String get keyboardKeyEject => r'Auswerfen';

  @override
  String get keyboardKeyEnd => r'End';

  @override
  String get keyboardKeyEscape => r'Esc';

  @override
  String get keyboardKeyFn => r'Fn';

  @override
  String get keyboardKeyHome => r'Home';

  @override
  String get keyboardKeyInsert => r'Asetzen';

  @override
  String get keyboardKeyMeta => r'Meta';

  @override
  String get keyboardKeyMetaMacOs => r'Command';

  @override
  String get keyboardKeyMetaWindows => r'Win';

  @override
  String get keyboardKeyNumLock => r'Num Lock';

  @override
  String get keyboardKeyNumpad1 => r'Num 1';

  @override
  String get keyboardKeyNumpad2 => r'Num 2';

  @override
  String get keyboardKeyNumpad3 => r'Num 3';

  @override
  String get keyboardKeyNumpad4 => r'Num 4';

  @override
  String get keyboardKeyNumpad5 => r'Num 5';

  @override
  String get keyboardKeyNumpad6 => r'Num 6';

  @override
  String get keyboardKeyNumpad7 => r'Num 7';

  @override
  String get keyboardKeyNumpad8 => r'Num 8';

  @override
  String get keyboardKeyNumpad9 => r'Num 9';

  @override
  String get keyboardKeyNumpad0 => r'Num 0';

  @override
  String get keyboardKeyNumpadAdd => r'Num +';

  @override
  String get keyboardKeyNumpadComma => r'Num ,';

  @override
  String get keyboardKeyNumpadDecimal => r'Num .';

  @override
  String get keyboardKeyNumpadDivide => r'Num /';

  @override
  String get keyboardKeyNumpadEnter => r'Num Enter';

  @override
  String get keyboardKeyNumpadEqual => r'Num =';

  @override
  String get keyboardKeyNumpadMultiply => r'Num *';

  @override
  String get keyboardKeyNumpadParenLeft => r'Num (';

  @override
  String get keyboardKeyNumpadParenRight => r'Num )';

  @override
  String get keyboardKeyNumpadSubtract => r'Num -';

  @override
  String get keyboardKeyPageDown => r'Page Down';

  @override
  String get keyboardKeyPageUp => r'Page Up';

  @override
  String get keyboardKeyPower => r'Power';

  @override
  String get keyboardKeyPowerOff => r'Ausschalten';

  @override
  String get keyboardKeyPrintScreen => r'Print Screen';

  @override
  String get keyboardKeyScrollLock => r'Scroll Lock';

  @override
  String get keyboardKeySelect => r'Select';

  @override
  String get keyboardKeyShift => r'Shift';

  @override
  String get keyboardKeySpace => r'Espace';

  @override
  String get lookUpButtonLabel => r'Nokuken';

  @override
  String get menuBarMenuLabel => r'Menübar-Menü';

  @override
  String get menuDismissLabel => r'Menü zoumaachen';

  @override
  String get scanTextButtonLabel => r'Text scannen';

  @override
  String get scrimLabel => r'Scrim';

  @override
  String get scrimOnTapHintRaw => r'$modalRouteContentName zoumaachen';

  @override
  String get searchWebButtonLabel => r'Internet duerchsichen';

  @override
  String get shareButtonLabel => r'Deelen';
}
