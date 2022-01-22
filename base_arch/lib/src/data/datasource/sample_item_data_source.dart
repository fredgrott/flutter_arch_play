// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dartz/dartz.dart';

import '../../domain/datasource/isample_item_data_source.dart';
import '../../domain/errors/app_failure.dart';
import '../../domain/models/sample_item_model.dart';
import '../models/sampleitem_list_viewmodel.dart';

class SampleItemDataSource implements ISampleItemDataSource {
  List<SampleItemModel> myViewModel = sampleItemListViewModel;

  @override
  Future<Either<DataSourceFailure, List<SampleItemModel>>>
      initSampleItemListModel() {
    myViewModel = [
      SampleItemModel((b) => b..id = 1),
      SampleItemModel((b) => b..id = 2),
      SampleItemModel((b) => b..id = 3),
    ];

    return myViewModel
        as Future<Either<DataSourceFailure, List<SampleItemModel>>>;
  }

  @override
  Future<Either<DataSourceFailure, List<SampleItemModel>>> getSampleItem(
      int id,) {
    return sampleItemListViewModel[id] as Future<Either<DataSourceFailure, List<SampleItemModel>>>;
  }
}
