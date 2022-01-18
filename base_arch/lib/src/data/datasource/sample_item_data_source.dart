// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/data/models/sample_item_list_view_model.dart';
import 'package:base_arch/src/domain/datasource/isample_item_data_source.dart';
import 'package:base_arch/src/domain/errors/app_failure.dart';
import 'package:dartz/dartz.dart';


class SampleItemDataSource implements ISampleItemDataSource{
  @override
  Future<Either<DataSourceFailure, SampleItemListViewModel>> getSampleItemModel() {
    // TODO: implement getSampleItemModel
    throw UnimplementedError();
  }
  
  
}