// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/domain/errors/app_failure.dart';
import 'package:base_arch/src/domain/models/sample_item_model.dart';
import 'package:base_arch/src/domain/usecase/app_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetSampleItemUseCase implements AppUseCase<SampleItemModel, Params> {
  @override
  Future<Either<AppFailure, Type>> call(Params params) {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}

class Params extends Equatable {
  final int id;

  @override
  List<Object> get props => [id];


  const Params(this.id);
}
