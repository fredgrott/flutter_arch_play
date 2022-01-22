// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/data/datasource/sample_item_data_source.dart';
import 'package:base_arch/src/data/repo/sample_item_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDataSource extends Mock implements SampleItemDataSource {}

class MockRepo extends Mock implements SampleItemRepo {}

void main() {
  late SampleItemRepo repo;
  late MockDataSource dataSource;
  const tID = 1;

  setUp(() {
    dataSource = MockDataSource();
    repo = SampleItemRepo(sampleItemDataSource: dataSource);
  });

  test(
    'Get Sample item',
    () async {
      when<dynamic>(() => repo.getSampleItem(tID)).thenReturn(tID);
    },
  );
}
