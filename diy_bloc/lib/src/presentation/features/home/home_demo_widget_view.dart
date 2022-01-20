// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:diy_bloc/src/presentation/themes/app_themedata_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../widgets/app_adaptive_appbar.dart';
import '../../widgets/app_adaptive_scaffold.dart';
import '../../widgets/app_widgetview.dart';
import 'all_destinations.dart';
import 'home_demo.dart';
import 'home_demo_controller.dart';
import 'standard_side_sheet.dart';

// Our layout stuff goes in this WidgetView construct
class HomeDemoWidgetView extends WidgetView<HomeDemo, HomeDemoController> {
  const HomeDemoWidgetView(
    HomeDemoController state, {
    Key? key,
  }) : super(
          state,
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      //  _onDestinationSelected(){
      //      setState((){
      //         do nav to namedRoute here
      //         it will involve selectedIndex
      //          used as index to namedRoutes
      //          list use navigatorKey to go to namedRoute
      //          without context
      // })
      // }
      //onDestinationSelected: ,

      
      

      drawerHeader: DrawerHeader(
        // ignore: use_named_constants
        margin: const EdgeInsets.all(0.0),

        // ignore: use_named_constants
        padding: const EdgeInsets.fromLTRB(
          0.0,
          0.0,
          0.0,
          0.0,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/grott_studios.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(),
      ),

      sideSheetBody: const StandardSideSheet(),
      selectedIndex: 0,
      destinations: allDestinations.sublist(
        0,
        state.destinationCount,
      ),
      appBar: AdaptiveAppBar(
        title: PlatformText('Default Demo'),
      ),
      body: _body(context),
      //floatingActionButton: FloatingActionButton(
      //onPressed: _increment,
      // child: const Icon(Icons.add),
      //),
      fabInRail: state.fabInRail,
      includeBaseDestinationsInMenu: state.includeBaseDestinationsInMenu,
    );
  }

  // ignore: long-method
  Widget _body(BuildContext context) {
    return Card(
      color: platformThemeData(
        context,
        material: (data) => data.colorScheme.secondaryContainer,
        cupertino: (data) => data.ownColor()?.appSecondaryContainer,
      ),
      child: ListView.builder(
        restorationId: 'sampleItemListView',
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          final item = state.items[index];

          return ListTile(
              title: Text(
                'SampleItem ${item.id}',
                style: platformThemeData(
                  context,
                  material: (data) => data.textTheme.labelLarge,
                  cupertino: (data) => data.ownText()?.appLabelLarge,
                ),
              ),
              leading: const CircleAvatar(
                // Display the Flutter Logo image asset.
                foregroundImage: AssetImage('assets/images/flutter_logo.png'),
              ),
              onTap: () {},
            
          );
        },
        itemCount: state.items.length,
      ),
    
    );
  }
}
