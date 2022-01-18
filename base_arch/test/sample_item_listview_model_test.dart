// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/data/models/sample_item_list_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {


  final myBuilder = SampleItemListViewModel().list.toBuilder();
  myBuilder.add(1);
  myBuilder.build();

  final tList = [1];

  test(
    "SampleItemListViewModel should have 1",
    () async {
      expect(myBuilder, tList,);
    },
  );
}
