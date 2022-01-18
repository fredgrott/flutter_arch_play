// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:base_arch/src/domain/errors/app_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';





/// Part of the features of Dart to mix OOP and FP together is the call statement which
/// instructucts dart to treat a class as a function when stated as Class(params)
/// and execute it as a function.
/// 
/// @author Fredrick Allan Grott
abstract class AppUseCase<T, Params> {
  // states that we can call an implementation of AppUseCase as a function, i.e. AppUseCase(t, params)
  Future<Either<AppFailure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
