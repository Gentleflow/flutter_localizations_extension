## flutter_localizations_extension

> Collect and adapt languages not supported by Flutter

#### Supported
 - Irish : ga
 - Luxembourgish: lb
 - Māori: mi

#### How to use

1. copy **ga_cupertino_localization.dart** and **ga_material_localization.dart** to project
2. Add language support in **localizationsDelegates**
```dart
MaterialApp(
  localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GaMaterialLocalizations.delegate,
    GaCupertinoLocalizations.delegate,
  ],
)
```


**If you want to add other languages, please submit a PR or issue.**