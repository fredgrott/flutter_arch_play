// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';


import '../../infrastructure/app_vars.dart';
import 'app_squircle.dart';
import 'app_theme_colors.dart';
import 'app_theme_data_defaults.dart';




SnackBarThemeData appMaterialLightSnackBarThemeData = SnackBarThemeData(
  backgroundColor: appMaterialLightColorScheme.surfaceVariant,
  actionTextColor: appMaterialLightColorScheme.primaryContainer,
  disabledActionTextColor: appMaterialLightColorScheme.onSurface,
  elevation: elevationTwo,
  behavior: SnackBarBehavior.floating,
  shape: const SquircleBorder(
     radius: BorderRadius.all(
        Radius.circular(8.0),
    ),
  ),
  contentTextStyle: appMaterialLightSnackContentTextStyle ,
);

SnackBarThemeData appMaterialDarkSnackBarThemeData = SnackBarThemeData(
  backgroundColor: appMaterialDarkColorScheme.surfaceVariant,
  actionTextColor: appMaterialDarkColorScheme.primaryContainer,
  disabledActionTextColor: appMaterialDarkColorScheme.onSurface,
  elevation: elevationTwo,
  behavior: SnackBarBehavior.floating,
  shape: const SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
  contentTextStyle: appMaterialDarkSnackContentTextStyle,
);

// Body Small
TextStyle appMaterialLightSnackContentTextStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.4,
  fontFamily: myFontFamilyNotoSerif(),
);

TextStyle appMaterialDarkSnackContentTextStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.4,
  fontFamily: myFontFamilyNotoSerif(),
);
