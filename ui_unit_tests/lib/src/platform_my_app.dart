// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:ui_unit_tests/src/localization_gen/l10n.dart';

import 'infrastructure/app_vars.dart';
import 'infrastructure/app_widget_keys.dart';
import 'platform_app_settings_controller.dart';
import 'presentation/features/home/home_demo.dart';
import 'presentation/themes/app_themedata.dart';

class PlatformMyApp extends StatelessWidget {
  final PlatformAppSettingsController platformAppSettingsController;

  const PlatformMyApp({
    Key? key,
    required this.platformAppSettingsController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: appBrightness == Brightness.light
          ? appMaterialLightThemeData
          : appMaterialDarkThemeData,
      child: PlatformProvider(
        settings: PlatformSettingsData(iosUsesMaterialWidgets: true),
        builder: (context) => AnimatedBuilder(
          animation: platformAppSettingsController,
          builder: (
            BuildContext context,
            Widget? child,
          ) {
            return PlatformApp(
              widgetKey: appKey,

              debugShowCheckedModeBanner: false,

              // so we can do navigation without context
              navigatorKey: navigatorKey,
              restorationScopeId: 'app',

              localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale(
                  'en',
                  '',
                ), // English, no country code
              ],

              material: (
                _,
                __,
              ) =>
                  MaterialAppData(
                theme: appMaterialLightThemeData,
                // in user set themes, one hoook a controller
                themeMode: ThemeMode.light,
                darkTheme: appMaterialDarkThemeData,
                // both highContrast and darkContrast are to set colors for text when
                // we use Material on Cupertino widgets via MaterialBasedCupertinoThemeData
                // thus since colors on Cupertino side is routed through CupertinoDynamicColor
                // we have no need to use those themes.
              ),
              cupertino: (
                _,
                __,
              ) =>
                  CupertinoAppData(
                theme: materialBasedCupertinoThemeData,
              ),
              home: const HomeDemo(),


            );
          },
        ),
      ),
    );
  }
}
