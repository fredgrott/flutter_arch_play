// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/data/models/sampleitem_list_viewmodel.dart';
import 'package:base_arch/src/domain/models/sample_item_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late List<SampleItemModel> tList;

  setUp(() {
    tList = [
      SampleItemModel((b) => b..id = 1),
      SampleItemModel((b) => b..id = 2),
      SampleItemModel((b) => b..id = 3),
    ];
    sampleItemListViewModel = [
      SampleItemModel((b) => b..id = 1),
      SampleItemModel((b) => b..id = 2),
      SampleItemModel((b) => b..id = 3),
    ];
  });

  test(
    "SampleItemListViewModel should have 1",
    () async {
      //expect(myBuilder, tList,);

      expect(sampleItemListViewModel, tList,);
    },
  );
}
