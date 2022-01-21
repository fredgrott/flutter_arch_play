// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';


import '../../infrastructure/app_vars.dart';
import 'app_theme_colors.dart';



TabBarTheme appMaterialLightTabBarTheme = TabBarTheme(
  indicatorSize: TabBarIndicatorSize.label,
  labelColor: appMaterialLightColorScheme.primaryContainer,
  labelPadding: const EdgeInsets.all(12),
  labelStyle: appMaterialLightTabTextStyle,
  unselectedLabelColor: appMaterialLightColorScheme.secondaryContainer,
  unselectedLabelStyle: appMaterialLightTabUnselectedTextStyle,
);

// labelLarge
TextStyle appMaterialLightTabTextStyle = TextStyle(
  color: appMaterialLightColorScheme.primary,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  fontFamily: myFontFamilyNotoSerif(),
);

TextStyle appMaterialDarkTabTextStyle = TextStyle(
  color: appMaterialDarkColorScheme.primary,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  fontFamily: myFontFamilyNotoSerif(),
);

TextStyle appMaterialLightTabUnselectedTextStyle = TextStyle(
  color: appMaterialLightColorScheme.secondary,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  fontFamily: myFontFamilyNotoSerif(),
);

TextStyle appMaterialDarkTabUnselectedTextStyle = TextStyle(
  color: appMaterialDarkColorScheme.secondary,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  fontFamily: myFontFamilyNotoSerif(),
);


TabBarTheme appMaterialDarkTabBarTheme = TabBarTheme(
  indicatorSize: TabBarIndicatorSize.label,
  labelColor: appMaterialLightColorScheme.primaryContainer,
  labelPadding: const EdgeInsets.all(12),
  labelStyle: appMaterialDarkTabTextStyle,
  unselectedLabelColor: appMaterialDarkColorScheme.secondaryContainer,
  unselectedLabelStyle: appMaterialDarkTabUnselectedTextStyle,
);
