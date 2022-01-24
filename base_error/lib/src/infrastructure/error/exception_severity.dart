// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Borrowed from zam core by Zamstation copyright 2021
// BSD 3-clause license


///
/// [ExceptionSeverity] is an enum with the following values.
///
/// - none -> if you don't want to set any severity.
/// - warning -> exception that require minor fixes.
/// - critical -> exception that require taking alternate paths.
/// - fatal -> exceptions that cannot be fixed.
///
enum ExceptionSeverity {
  none,
  warning,
  critical,
  fatal,
}
