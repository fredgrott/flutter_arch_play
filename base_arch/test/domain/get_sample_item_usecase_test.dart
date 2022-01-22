// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/data/usecase/get_sample_item_use_case.dart';

import 'package:base_arch/src/domain/repo/isample_item_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockISampleItemRepo extends Mock implements ISampleItemRepo {}

void main() {
  late MockISampleItemRepo mockISampleItemRepo;
  late GetSampleItemUseCase useCase;

  const tID = 1;

  setUp(() {
    mockISampleItemRepo = MockISampleItemRepo();
    useCase = GetSampleItemUseCase(mockISampleItemRepo);
  });

  test(
    'Should SampleItem',
    () async {
      when<dynamic>(
        mockISampleItemRepo.getSampleItem(any()) as dynamic Function(),
      ).thenAnswer((_) async => const Right<dynamic, int>(tID));

      final result = await useCase(const Params(tID));

      expect(result, const Right<dynamic, int>(tID),);
    },
  );
}
