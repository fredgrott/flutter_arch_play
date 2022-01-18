// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/domain/entities/sample_item.dart';
import 'package:base_arch/src/domain/models/sample_item_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tSampleItemModel = SampleItemModel((b) => b..id = 1);

  group(
    'SampleItem Model Tests',
    () {
      test(
        'Is SampleItemModel subclass of SampleItem',
        () async {
          expect(
            tSampleItemModel,
            isA<SampleItem>(),
          );
        },
      );

      test(
        "SampleItemModel should have 1 as id",
        () async {
          expect(tSampleItemModel.id, 1,);
        },
      );
    },
  );
}
