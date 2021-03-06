// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// Set up platform app services to app level changes that trigger UI changes that
/// nned to be passed to a root level builder.
///
/// @author Fredrick Allan Grott
class PlatformAppSettingsService {
  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async => ThemeMode.system;

  // Retrieving the user set device locale
  Future<Locale?> deviceLocale() async => SchedulerBinding.instance?.platformDispatcher.locale;

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    // Use the shared_preferences package to persist settings locally or the
    // http package to persist settings over the network.
  }

  Future<void> updateDeviceLocale(Locale newDeviceLocale) async{

  }
}
