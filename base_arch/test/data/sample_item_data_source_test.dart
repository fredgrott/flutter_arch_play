// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/data/datasource/sample_item_data_source.dart';
import 'package:base_arch/src/domain/models/sample_item_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSampleItemDataSource extends Mock implements SampleItemDataSource {}

void main() {
  final List<SampleItemModel> tList = [
    SampleItemModel((b) => b..id = 1),
    SampleItemModel((b) => b..id = 2),
    SampleItemModel((b) => b..id = 3),
  ];

  late MockSampleItemDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockSampleItemDataSource();
  });

  group(
    'Data Source tests',
    () {
      test(
        'Init View Model',
        () async {
          // stubbing initSampleItemListModel method
          when<dynamic>(() => mockDataSource.initSampleItemListModel())
              .thenReturn(tList);

          // verify no interaction
          verifyNever(() => mockDataSource.initSampleItemListModel());

          // interact
          //mockDataSource.initSampleItemListModel();
          // almost same as

          // way to interact on left side and match on right side in one statement
          // rather then a separate interact and then repeat in the expect actual  and matcher
          // statement
          expect(
            mockDataSource.initSampleItemListModel(),
            tList,
          );
        },
      );

     
    },
  );
}
