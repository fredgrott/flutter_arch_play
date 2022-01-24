// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Borrowed from zam core by Zamstation copyright 2021
// BSD 3-clause license


import 'named_exception.dart';

typedef ParameterizedExceptionBuilder<INPUT extends Object?,
        EXCEPTION extends NamedException>
    = EXCEPTION Function(INPUT input);
