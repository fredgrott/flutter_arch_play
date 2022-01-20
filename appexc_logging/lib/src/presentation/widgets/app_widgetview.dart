// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Source Modified from GSkinner's article:
// https://blog.gskinner.com/archives/2020/02/flutter-widgetview-a-simple-separation-of-layout-and-logic.html

import 'package:flutter/cupertino.dart';

/// Basically with this WidgetView we are moving the Business 
/// Logic of the Stateful from the State object back to the 
/// Stateful as controller. The State Class than would be this:
/// 
/// class _MyWidgetView extends WidgetView<MyWidget, _MyWidgetController> {
///  const _MyWidgetView (this.state, {Key key}) : super(key: key);
///   
///  Widget build(BuildContext build){
///    
///   }
/// }
/// 
/// @author Fredrick Allan Grott
abstract class WidgetView<T1, T2> extends StatelessWidget {
  final T2 state;

  T1 get widget => (state as State).widget as T1;

  const WidgetView(this.state, {Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context);

}



/// This reduces the boilerplate in Stateless Widgets by moving any
/// non state boilerplate setup to a MyWidget construct so we have 
/// one widget with just layout and the other with boilerplate setup:
/// 
/// class _MyWidgetView extends StatelessView<MyWidget> {
///  const _MyWidgetView (this.state, {Key key}) : super(key: key);
///   
///  Widget build(BuildContext build){
///     
///   }
/// }
/// 
/// @author Fredrick Allan Grott
// ignore: prefer-single-widget-per-file
abstract class StatelessView<T1> extends StatelessWidget {
  final T1 widget;

  const StatelessView(this.widget, {Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context);
}
