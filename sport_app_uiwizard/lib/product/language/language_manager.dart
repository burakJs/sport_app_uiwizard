import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable
final class LanguageManager extends EasyLocalization {
  LanguageManager({required super.child, super.key})
      : super(
          supportedLocales: LocaleEnum.locales,
          path: _path,
          startLocale: LocaleEnum.en.locale,
        );
  static const String _path = 'assets/translations';
}

enum LocaleEnum {
  en(Locale('en', 'US'));

  const LocaleEnum(this.locale);
  final Locale locale;

  static List<Locale> get locales =>
      LocaleEnum.values.map((e) => e.locale).toList();
}
