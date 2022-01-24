// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'exception_severity.dart';
import 'named_exception.dart';

class RepoException extends NamedException{

  




  @override
  String get problem => "Repository Failure";

  @override
  ExceptionSeverity get severity => ExceptionSeverity.critical;

  @override
  String get solution => 'Check Reposiory defintion';

  const RepoException( { String name = 'RepoException'});
  
}