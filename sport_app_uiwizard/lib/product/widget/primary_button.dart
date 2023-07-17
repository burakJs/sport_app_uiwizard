import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({required this.text, super.key, this.onPressed});
  final VoidCallback? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: context.padding.verticalNormal,
        child: Center(
          child: Text(
            text,
            style: context.general.textTheme.bodyLarge?.copyWith(
              color: context.general.colorScheme.surfaceTint,
            ),
          ),
        ),
      ),
    );
  }
}
