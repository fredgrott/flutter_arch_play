// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Borrowed from zam core by Zamstation copyright 2021
// BSD 3-clause license

import 'parameterized_void_callback.dart';

///
/// An empty parameterized function that can be used in
/// assigning default values for ParameterizedCallback.
///
/// ```dart
/// class MyClass {
///   final ParameterizedCallback initialize;
///   MyClass([ParameterizedCallback? initialize])
///       : initialize = initialize ?? emptyParameterizedCallback;
/// }
/// ```
///
ParameterizedVoidCallback get emptyParameterizedCallback => (input) {};
