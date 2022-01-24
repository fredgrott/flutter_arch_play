// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'exception_severity.dart';
import 'named_exception.dart';

///
/// Exceptions that are not expected but handled
/// in the else part and sent to the user interface.
///
/// User interface must globally listen to this exception
/// and show an error message to the user.
///
class UnknownException extends NamedException {
  final StackTrace stackTrace;

  @override
  String get problem => 'Something went wrong.';

  @override
  String get solution => 'Please try again later.';

  @override
  ExceptionSeverity get severity => ExceptionSeverity.fatal;

  @override
  String get text => '${super.text}\n\nStackTrace:\n$stackTrace';

  const UnknownException({
    this.stackTrace = StackTrace.empty,
  });
}
