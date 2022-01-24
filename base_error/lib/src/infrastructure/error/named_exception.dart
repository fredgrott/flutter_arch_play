// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Borrowed from zam core by Zamstation copyright 2021
// BSD 3-clause license



import 'package:equatable/equatable.dart';

import '../object/identifiable.dart';
import 'basic_exception.dart';
import 'empty_exception.dart';
import 'exception_severity.dart';

abstract class NamedException extends Equatable
    implements Exception, Identifiable<String> {
  ///
  /// An identifer for the exception.
  /// Default to the class's [runtimeType].
  ///
  @override
  String get key => runtimeType.toString();

  ///
  /// A more user readable exception name than the [key].
  /// Default to [key] unless otherwise specified.
  ///
  String get name => key;

  ///
  /// [category] is either the super class or this class.
  ///
  Type get category => runtimeType;

  ///
  /// Problem statement of the [Exception].
  ///
  /// Example:
  ///
  ///     problem => 'Provided value is -26 which is negative.'
  ///
  String get problem;

  ///
  /// Solution statement of the [Exception].
  ///
  /// Example:
  ///
  ///     solution => 'Please provide a positive value.'
  ///
  String get solution;

  ///
  /// Severity can be none, warning or critical.
  ///
  ExceptionSeverity get severity;

  ///
  /// Complete description of the [Exception].
  ///
  /// Mostly built using [name], [problem] and [solution].
  ///
  String get text =>
      '$name has occured.\n> Problem: $problem\n> Solution: $solution';

  @override
  List<Object> get props => [];

  ///
  /// Empty default constructor for sub classes.
  ///
  const NamedException();

  ///
  /// Example:
  ///
  ///     final exception = NamedException.create('Provided value is -26 which is negative.');
  ///
  /// or
  ///
  ///     final exception = NamedException.create(
  ///       'Provided value is -26 which is negative.'
  ///       solution: 'Please provide a positive value.'
  ///       severity: ExceptionSeverity.critical,
  ///     );
  ///
  factory NamedException.create(
    String problem, {
    String name = "NamedException",
    String solution = '<none>',
    ExceptionSeverity severity = ExceptionSeverity.none,
  }) =>
      BasicException(
        problem,
        name: name,
        solution: solution,
        severity: severity,
      );

  ///
  /// Example:
  ///
  ///     final exception = NamedException.empty();
  ///
  /// or
  ///
  ///     final exception = EmptyException();
  ///
  factory NamedException.empty() => const EmptyException();

  @override
  String toString() => '$runtimeType Exception';
}
