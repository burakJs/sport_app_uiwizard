import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Initialize {
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }
}
