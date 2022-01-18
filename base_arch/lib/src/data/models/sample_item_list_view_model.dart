// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'sample_item_list_view_model.g.dart';

/// The SampleItemListViewModel and its usage is
///   var myList = SampleItemListViewModel.rebuild((b) => b ..addAll([1,2,3]));
///
/// @author Fredrick Allan Grott
abstract class SampleItemListViewModel
    implements Built<SampleItemListViewModel, SampleItemListViewModelBuilder> {
  BuiltList<int> get list;

  factory SampleItemListViewModel([
    void Function(SampleItemListViewModelBuilder) updates,
  ]) = _$SampleItemListViewModel;

  SampleItemListViewModel._();
}
