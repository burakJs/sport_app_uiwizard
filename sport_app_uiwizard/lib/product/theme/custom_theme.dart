import 'package:flutter/material.dart';

import 'package:sport_app_uiwizard/product/theme/color/color_constants.dart';

@immutable
final class CustomTheme {
  CustomTheme({ThemeData? data}) : _themeData = data ?? ThemeData.light();

  final ThemeData _themeData;

  ThemeData get data => _themeData.copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: ColorConstants.bloodmystIsle,
          ),
        ),
        colorScheme: _themeData.colorScheme.copyWith(
          surfaceTint: ColorConstants.white,
          inverseSurface: ColorConstants.blackHole,
          surface: ColorConstants.dimGrey,
        ),
      );
}
