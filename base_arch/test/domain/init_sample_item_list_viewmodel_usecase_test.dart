// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/data/usecase/init_sample_item_list_view_model_use_case.dart';
import 'package:base_arch/src/domain/datasource/isample_item_data_source.dart';
import 'package:base_arch/src/domain/errors/app_failure.dart';
import 'package:base_arch/src/domain/models/sample_item_model.dart';
import 'package:base_arch/src/domain/usecase/app_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockISampleItemDataSource extends Mock implements ISampleItemDataSource {}

void main() {
  late InitSampleItemListViewModelUseCase useCase;
  late MockISampleItemDataSource mockISampleItemDataSource;
  final List<SampleItemModel> tList = [
    SampleItemModel((b) => b..id = 1),
    SampleItemModel((b) => b..id = 2),
    SampleItemModel((b) => b..id = 3),
  ];

  setUp(() {
    mockISampleItemDataSource = MockISampleItemDataSource();
    useCase = InitSampleItemListViewModelUseCase(mockISampleItemDataSource);
  });

  test(
    'Should get a List of 1, 2, 3',
    () async {
      when<dynamic>(
        mockISampleItemDataSource.initSampleItemListModel() as dynamic
            Function(),
      ).thenAnswer(
        (_) async => Right<dynamic, List<SampleItemModel>>(tList),
      );

      final result = await useCase(NoParams());

      expect(
        result,
        Right<dynamic, List<SampleItemModel>>(tList),
      );

      verifyNever<dynamic>(mockISampleItemDataSource as dynamic Function());
    },
  );
}
