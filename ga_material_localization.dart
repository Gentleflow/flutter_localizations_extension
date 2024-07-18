import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

class _GaMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _GaMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ga';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    // The locale (in this case `ga`) needs to be initialized into the custom
    // date symbols and patterns setup that Flutter uses.
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: gaLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(gaDateSymbols),
    );

    return SynchronousFuture<MaterialLocalizations>(
      GaMaterialLocalizations(
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
  bool shouldReload(_GaMaterialLocalizationsDelegate old) => false;
}
// #enddocregion Delegate

/// A custom set of localizations for the 'ga' locale.
class GaMaterialLocalizations extends GlobalMaterialLocalizations {
  const GaMaterialLocalizations({
    super.localeName = 'ga',
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

// #docregion Getters
  @override
  String get moreButtonTooltip => r'Níos mó';

  @override
  String get aboutListTileTitleRaw => r'Roimh $applicationName';

  @override
  String get alertDialogLabel => r'Foláireamh';

// #enddocregion Getters

  @override
  String get anteMeridiemAbbreviation => r'RN';

  @override
  String get backButtonTooltip => r'Ar ais';

  @override
  String get cancelButtonLabel => r'CEALAIGH';

  @override
  String get closeButtonLabel => r'DÚN';

  @override
  String get closeButtonTooltip => r'Dún';

  @override
  String get collapsedIconTapHint => r'Méadaigh';

  @override
  String get continueButtonLabel => r'AR AGHAIDH';

  @override
  String get copyButtonLabel => r'CÓIPEÁIL';

  @override
  String get cutButtonLabel => r'GEARR';

  @override
  String get deleteButtonTooltip => r'SCRIOS';

  @override
  String get dialogLabel => r'Dialóg';

  @override
  String get drawerLabel => r'Roghchlár stiúrtha';

  @override
  String get expandedIconTapHint => r'Fill';

  @override
  String get firstPageTooltip => r'An Chéad leathanach';

  @override
  String get hideAccountsLabel => r'Folaigh cuntais';

  @override
  String get lastPageTooltip => r'Leathanach deiridh';

  @override
  String get licensesPageTitle => r'Ceadúnais';

  @override
  String get modalBarrierDismissLabel => r'Dún';

  @override
  String get nextMonthTooltip => r'Mí seo chugainn';

  @override
  String get nextPageTooltip => r'An chéad leathanach eile';

  @override
  String get okButtonLabel => r'CGL';

  @override
  // A custom drawer tooltip message.
  String get openAppDrawerTooltip => r'Oscail roghchlár stiúrtha';

// #docregion Raw
  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow de $rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      r'$firstRow–$lastRow de thart ar $rowCount';

// #enddocregion Raw

  @override
  String get pasteButtonLabel => r'GREAMAIGH';

  @override
  String get popupMenuLabel => r'Roghchlár aníos';

  @override
  String get postMeridiemAbbreviation => r'IN';

  @override
  String get previousMonthTooltip => r'An mí roimhe';

  @override
  String get previousPageTooltip => r'An leathanach roimhe';

  @override
  String get refreshIndicatorSemanticLabel => r'Athnuaigh';

  @override
  String? get remainingTextFieldCharacterCountFew => null;

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String get remainingTextFieldCharacterCountOne => r'Fanann carachtar amháin';

  @override
  String get remainingTextFieldCharacterCountOther =>
      r'Fanann $remainingCount gcarachtar';

  @override
  String? get remainingTextFieldCharacterCountTwo => r'Fanann 2 charachtar';

  @override
  String get remainingTextFieldCharacterCountZero =>
      r'Ní fanann carachtair ar bith';

  @override
  String get reorderItemDown => r'Bog síos';

  @override
  String get reorderItemLeft => r'Bog ar chlé';

  @override
  String get reorderItemRight => r'Bog ar dheis';

  @override
  String get reorderItemToEnd => r'Bog go dtí an chríoch';

  @override
  String get reorderItemToStart => r'Bog go dtí an tús';

  @override
  String get reorderItemUp => r'Bog suas';

  @override
  String get rowsPerPageTitle => r'Ró sa lá:';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => r'Cuardaigh';

  @override
  String get selectAllButtonLabel => r'ROGHNAIGH UILE';

  @override
  String? get selectedRowCountTitleFew => null;

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String get selectedRowCountTitleOne => r'Tá earra 1 roghnaithe';

  @override
  String get selectedRowCountTitleOther =>
      r'Tá $selectedRowCount earra roghnaithe';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String get selectedRowCountTitleZero => r'Ní earraí ar bith roghnaithe';

  @override
  String get showAccountsLabel => r'Taispeáin cuntais';

  @override
  String get showMenuTooltip => r'Taispeáin roghchlár';

  @override
  String get signedInLabel => r'Sínithe istigh';

  @override
  String get tabLabelRaw => r'Táb $tabIndex de $tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.h_colon_mm_space_a;

  @override
  String get timePickerHourModeAnnouncement => r'Roghnaigh uaireanta';

  @override
  String get timePickerMinuteModeAnnouncement => r'Roghnaigh nóiméid';

  @override
  String get viewLicensesButtonLabel => r'AMHARC AR CEADÚNAIS';

  @override
  List<String> get narrowWeekdays =>
      const <String>['D', 'L', 'M', 'C', 'D', 'A', 'S'];

  @override
  int get firstDayOfWeekIndex => 1;

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _GaMaterialLocalizationsDelegate();

  @override
  String get calendarModeButtonLabel => r'Athraigh go féilire';

  @override
  String get dateHelpText => r'dd/mm/yyyy';

  @override
  String get dateInputLabel => r'Iontráil Dáta';

  @override
  String get dateOutOfRangeLabel => r'As raon.';

  @override
  String get datePickerHelpText => r'ROGHNAIGH DÁTA';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'Dáta críochnaithe $fullDate';

  @override
  String get dateRangeEndLabel => r'Dáta críochnaithe';

  @override
  String get dateRangePickerHelpText => 'ROGHNAIGH RAON';

  @override
  String get dateRangeStartDateSemanticLabelRaw => 'Dáta tosaithe \$fullDate';

  @override
  String get dateRangeStartLabel => 'Dáta Tosaithe';

  @override
  String get dateSeparator => '/';

  @override
  String get dialModeButtonLabel => 'Athraigh go mód roghnóir dhiailiú';

  @override
  String get inputDateModeButtonLabel => 'Athraigh go ionchur';

  @override
  String get inputTimeModeButtonLabel => 'Athraigh go mód ionchuir téacs';

  @override
  String get invalidDateFormatLabel => 'Formáid neamhbhailí.';

  @override
  String get invalidDateRangeLabel => 'Raon neamhbhailí.';

  @override
  String get invalidTimeLabel => 'Iontráil am bailí';

  @override
  String get licensesPackageDetailTextOther => '\$licenseCount ceadúnas';

  @override
  String get saveButtonLabel => 'SÁBHÁIL';

  @override
  String get selectYearSemanticsLabel => 'Roghnaigh bliain';

  @override
  String get timePickerDialHelpText => 'ROGHNAIGH AM';

  @override
  String get timePickerHourLabel => 'Uair';

  @override
  String get timePickerInputHelpText => 'IONTRÁIL AM';

  @override
  String get timePickerMinuteLabel => 'Nóiméad';

  @override
  String get unspecifiedDate => 'Dáta';

  @override
  String get unspecifiedDateRange => 'Raon dáta';

  @override
  String get bottomSheetLabel => 'Bileog Íochtair';

  @override
  String get collapsedHint => 'Méadaithe';

  @override
  String get currentDateLabel => 'Inniu';

  @override
  String get expandedHint => 'Laghdaithe';

  @override
  String get expansionTileCollapsedHint => 'tapáil faoi dhó chun méadú';

  @override
  String get expansionTileCollapsedTapHint =>
      'Méadaigh chun tuilleadh sonraí a fháil';

  @override
  String get expansionTileExpandedHint => 'tapáil faoi dhó chun laghdú';

  @override
  String get expansionTileExpandedTapHint => 'Laghdaigh';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'AltGr';

  @override
  String get keyboardKeyBackspace => 'Cúlspás';

  @override
  String get keyboardKeyCapsLock => 'Glas Ceannlitreacha';

  @override
  String get keyboardKeyChannelDown => 'Cainéal Síos';

  @override
  String get keyboardKeyChannelUp => 'Cainéal Suas';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Scrios';

  @override
  String get keyboardKeyEject => 'Díchuir';

  @override
  String get keyboardKeyEnd => 'Deireadh';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'Baile';

  @override
  String get keyboardKeyInsert => 'Ionsáigh';

  @override
  String get keyboardKeyMeta => 'Meta';

  @override
  String get keyboardKeyMetaMacOs => 'Ordú';

  @override
  String get keyboardKeyMetaWindows => 'Win';

  @override
  String get keyboardKeyNumLock => 'Glas Uimhreacha';

  @override
  String get keyboardKeyNumpad1 => 'Uimh 1';

  @override
  String get keyboardKeyNumpad2 => 'Uimh 2';

  @override
  String get keyboardKeyNumpad3 => 'Uimh 3';

  @override
  String get keyboardKeyNumpad4 => 'Uimh 4';

  @override
  String get keyboardKeyNumpad5 => 'Uimh 5';

  @override
  String get keyboardKeyNumpad6 => 'Uimh 6';

  @override
  String get keyboardKeyNumpad7 => 'Uimh 7';

  @override
  String get keyboardKeyNumpad8 => 'Uimh 8';

  @override
  String get keyboardKeyNumpad9 => 'Uimh 9';

  @override
  String get keyboardKeyNumpad0 => 'Uimh 0';

  @override
  String get keyboardKeyNumpadAdd => 'Uimh +';

  @override
  String get keyboardKeyNumpadComma => 'Uimh ,';

  @override
  String get keyboardKeyNumpadDecimal => 'Uimh .';

  @override
  String get keyboardKeyNumpadDivide => 'Uimh /';

  @override
  String get keyboardKeyNumpadEnter => 'Uimh Enter';

  @override
  String get keyboardKeyNumpadEqual => 'Uimh =';

  @override
  String get keyboardKeyNumpadMultiply => 'Uimh *';

  @override
  String get keyboardKeyNumpadParenLeft => 'Uimh (';

  @override
  String get keyboardKeyNumpadParenRight => 'Uimh )';

  @override
  String get keyboardKeyNumpadSubtract => 'Uimh -';

  @override
  String get keyboardKeyPageDown => 'Lch Síos';

  @override
  String get keyboardKeyPageUp => 'Lch Suas';

  @override
  String get keyboardKeyPower => 'Cumhacht';

  @override
  String get keyboardKeyPowerOff => 'Múch';

  @override
  String get keyboardKeyPrintScreen => 'Priontáil Scáileán';

  @override
  String get keyboardKeyScrollLock => 'Glas Scrollaithe';

  @override
  String get keyboardKeySelect => 'Roghnaigh';

  @override
  String get keyboardKeyShift => 'Shift';

  @override
  String get keyboardKeySpace => 'Spás';

  @override
  String get lookUpButtonLabel => 'Cuardaigh';

  @override
  String get menuBarMenuLabel => 'Roghchlár barra roghchláir';

  @override
  String get menuDismissLabel => 'Díbir roghchlár';

  @override
  String get scanTextButtonLabel => 'Scan téacs';

  @override
  String get scrimLabel => 'Scrim';

  @override
  String get scrimOnTapHintRaw => r'Dún $modalRouteContentName';

  @override
  String get searchWebButtonLabel => 'Cuardaigh Gréasán';

  @override
  String get shareButtonLabel => 'Comhroinn';
}
