import 'package:flutter/material.dart';
import 'package:intl_play/src/platform_app_settings_controller.dart';

import 'src/platform_app_settings_service.dart';
import 'src/platform_my_app.dart';

Future<void> main() async {
  final platformAppSettingsController =
      PlatformAppSettingsController(PlatformAppSettingsService());

  // ignore: await_only_futures
  await platformAppSettingsController.loadSettings;

  runApp(PlatformMyApp(platformAppSettingsController: platformAppSettingsController,));
}
