// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'exception_severity.dart';
import 'named_exception.dart';

class DatasourceException extends NamedException{
  @override
  String get problem => "Datasource Recpetion";

  @override
  ExceptionSeverity get severity => ExceptionSeverity.fatal;

  @override
  String get solution => "Check Datasource definition";

  const DatasourceException({String name = "Datasource Exception"});
}