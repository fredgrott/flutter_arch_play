// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/domain/datasource/isample_item_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../domain/errors/app_failure.dart';
import '../../domain/models/sample_item_model.dart';
import '../../domain/usecase/app_use_case.dart';

class InitSampleItemListViewModelUseCase
    implements AppUseCase<SampleItemModel, NoParams> {
  late ISampleItemDataSource dataSource;

  InitSampleItemListViewModelUseCase(this.dataSource);

  @override
  Future<Either<AppFailure, Type>> call(NoParams params) async {
    
    return await dataSource.initSampleItemListModel() as Future<Either<AppFailure, Type>>;
  }
}

class Params extends Equatable {
  final int id;

  @override
  List<Object> get props => [id];

  const Params(this.id);
}
