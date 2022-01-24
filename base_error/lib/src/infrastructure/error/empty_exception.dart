// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Borrowed from zam core by Zamstation copyright 2021
// BSD 3-clause license

import 'exception_severity.dart';
import 'named_exception.dart';

///
/// A simple empty exception that can be created on the fly.
///
class EmptyException extends NamedException {
  @override
  // ignore: avoid_field_initializers_in_const_classes
  final String problem = '<none>';

  @override
  // ignore: avoid_field_initializers_in_const_classes
  final String solution = '<none>';

  @override
  // ignore: avoid_field_initializers_in_const_classes
  final ExceptionSeverity severity = ExceptionSeverity.none;

  ///
  /// Example:
  ///
  ///     final exception = EmptyException();
  ///
  /// or
  ///
  ///     final exception = NamedException.empty();
  ///
  const EmptyException();
}
