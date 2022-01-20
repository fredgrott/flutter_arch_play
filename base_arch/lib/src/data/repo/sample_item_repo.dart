// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:dartz/dartz.dart';

import '../../domain/errors/app_failure.dart';
import '../../domain/models/sample_item_model.dart';
import '../../domain/repo/isample_item_repo.dart';

class SampleItemRepo implements ISampleItemRepo{
  @override
  Future<Either<RepoFailure, SampleItemModel>> addSampleItem(int id) async {
    // TODO: implement addSampleItem
    throw UnimplementedError();
  }

  @override
  Future<Either<RepoFailure, SampleItemModel>> getSampleItem(int id) async {
    // TODO: implement getSampleItem
    throw UnimplementedError();
  }
  
}