// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dartz/dartz.dart';


import '../errors/app_failure.dart';
import '../models/sample_item_model.dart';

abstract class ISampleItemDataSource {
  Future<Either<DataSourceFailure, List<SampleItemModel>>>
      getSampleItemListModel();
  Future<Either<DataSourceFailure, List<SampleItemModel>>>
      initSampleItemListModel();
}
