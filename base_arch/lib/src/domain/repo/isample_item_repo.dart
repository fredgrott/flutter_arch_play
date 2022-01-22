// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:base_arch/src/domain/errors/app_failure.dart';
import 'package:base_arch/src/domain/models/sample_item_model.dart';
import 'package:dartz/dartz.dart';

/// Just a basic reposiotry interface and the methods will align with the 
/// use case defintions.
///
/// @author Fredrick Allan Grott
abstract class ISampleItemRepo {
  Future<Either<RepoFailure, SampleItemModel>> getSampleItem(int id);
  


}
