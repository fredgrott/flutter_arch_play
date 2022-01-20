// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../data/sample_item.dart';
import 'home_demo.dart';
import 'home_demo_widget_view.dart';

class HomeDemoController extends State<HomeDemo>{
  
  final List<SampleItem> items = const [
    SampleItem(1),
    SampleItem(2),
    SampleItem(3),
  ];

  final int destinationCount = 5;
  final bool fabInRail = false;
  final bool includeBaseDestinationsInMenu = true;

  @override
  Widget build(BuildContext context) => HomeDemoWidgetView(this);

  
}
