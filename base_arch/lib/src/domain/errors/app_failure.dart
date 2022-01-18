// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:equatable/equatable.dart';

/// The AppFailure class which will have a toString method that will
/// contain a $runtimeType Exception string. This is a base clasee interface to
/// create all the different Exception Failure types of the Application
/// reflecting the different architecture layers of the app.
///
/// In short words since the Type is the class the actual
/// runtimeType is in fact the architecture layer or component name.
/// For example, RepoFailure will have a toString of 'RepoFailure Exception'.
///
/// @author Fredrick Allan Grott
abstract class AppFailure extends Equatable implements Exception {
  @override
  List<Object> get props => [];

  @override
  String toString() => '$runtimeType Exception';
}

/// Not implementing an interface but instead treating AppFailure as a
/// base class. We do not then need to dupiclate by creating another
/// class. Instead of this:
///  try {
///      final myItem = sampleItemDataSource.getSampleItem(id);
///
///      return Right<dynamic, Future<SampleItem>>(myItem)
///          as Future<Either<Failure, SampleItem>>;
///    } on RepoException {
///      return const Left<dynamic, Future<SampleItem>>(RepoFailure)
///          as Future<Either<Failure, SampleItem>>;
///  }
///  We can have
///  try{
///   final myItem = sampleItemDataSource.getSampleItem(id);
///       return Right<dynamic, Future<SampleItem>>(myItem)
///          as Future<Either<Failure, SampleItem>>;
///    } on RepoFailure {
///      log('$RepoFailure.toString')
///      return const Left<dynamic, Future<SampleItem>>(RepoFailure)
///          as Future<Either<Failure, SampleItem>>;
/// }
///
/// @author Fredrick Allan Grott
class RepoFailure extends AppFailure {}


class DataSourceFailure extends AppFailure {}