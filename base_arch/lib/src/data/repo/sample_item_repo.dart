// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/data/datasource/sample_item_data_source.dart';
import 'package:dartz/dartz.dart';

import '../../domain/errors/app_failure.dart';
import '../../domain/models/sample_item_model.dart';
import '../../domain/repo/isample_item_repo.dart';

class SampleItemRepo implements ISampleItemRepo {
  final SampleItemDataSource sampleItemDataSource;

  SampleItemRepo({required this.sampleItemDataSource});

  @override
  Future<Either<RepoFailure, SampleItemModel>> getSampleItem(int id) async {
    return sampleItemDataSource.getSampleItem(id) as Future<Either<RepoFailure, SampleItemModel>>;
  }
}
