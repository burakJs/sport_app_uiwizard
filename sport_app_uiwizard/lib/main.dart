import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sport_app_uiwizard/feature/onboarding/onboarding_view.dart';
import 'package:sport_app_uiwizard/product/init/initialize.dart';
import 'package:sport_app_uiwizard/product/language/language_manager.dart';
import 'package:sport_app_uiwizard/product/theme/custom_theme.dart';

Future<void> main() async {
  await Initialize.initialize();
  runApp(LanguageManager(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      theme: CustomTheme().data,
      home: const OnboardingView(),
    );
  }
}
