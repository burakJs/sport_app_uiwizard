import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sport_app_uiwizard/product/language/locale_keys.g.dart';
import 'package:sport_app_uiwizard/product/widget/primary_button.dart';

@immutable
final class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.padding.normal,
          child: Column(
            children: [
              const Spacer(),
              //TODO: Replace with image
              const SizedBox(width: 220, height: 220, child: Placeholder()),
              const Spacer(),
              _titleText(context),
              SizedBox(height: context.sized.lowValue),
              _descriptionText(context),
              const Spacer(),
              PrimaryButton(
                onPressed: () {},
                text: LocaleKeys.onboarding_buttonText.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text _titleText(BuildContext context) {
    return Text(
      LocaleKeys.onboarding_title.tr(),
      style: context.general.textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: context.general.colorScheme.inverseSurface,
      ),
    );
  }

  Text _descriptionText(BuildContext context) {
    return Text(
      LocaleKeys.onboarding_description.tr(),
      style: context.general.textTheme.bodyLarge?.copyWith(
        color: context.general.colorScheme.surface,
      ),
    );
  }
}
