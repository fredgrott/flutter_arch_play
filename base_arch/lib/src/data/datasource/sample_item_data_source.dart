// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:dartz/dartz.dart';

import '../../domain/datasource/isample_item_data_source.dart';
import '../../domain/errors/app_failure.dart';
import '../../domain/models/sample_item_model.dart';



class SampleItemDataSource implements ISampleItemDataSource{
  @override
  Future<Either<DataSourceFailure, List<SampleItemModel>>> getSampleItemListModel() {
    // TODO: implement getSampleItemModel
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceFailure, List<SampleItemModel>>> initSampleItemListModel() {
    // TODO: implement initSampleItemListModel
    throw UnimplementedError();
  }
  
  
}
