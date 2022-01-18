// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/data/sample_item.dart';
import 'package:built_value/built_value.dart';

part 'sample_item_model.g.dart';

/// The SampleItemModel. Usage is:
///    var itemOne = SampleItemModel((b)=> b..id=1);
///
/// @author Fredrick Allan Grott
abstract class SampleItemModel
    implements Built<SampleItemModel, SampleItemModelBuilder>, SampleItem {
  @override
  int get id;

  SampleItemModel._();
  // ignore: sort_unnamed_constructors_first
  factory SampleItemModel([
    dynamic Function(SampleItemModelBuilder b) updates,
  ]) = _$SampleItemModel;
}
