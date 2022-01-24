// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Borrowed from zam core by Zamstation copyright 2021
// BSD 3-clause license


///
/// Most commonly used interface in classes with keys to identify objects.
/// [key] is supposed to be unique.
/// Can be used in [==] operator and [hashCode] overrides.
///
abstract class Identifiable<T extends Object?> {
  T get key;
}
