/* this file contains the routes for the app */

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/category.dart';
import 'package:widget_forge_project/data/entities/item.dart';
import 'package:widget_forge_project/ui/screens/screen_widgets.dart';

import '../ui/screens/screen_home.dart';
import '../ui/screens/screen_widget_category.dart';


abstract class AppRoutes {

  /// home screen
  static const homeScreen = '/';

  /// widget category screen
  static const widgetCategoryScreen = '/widgetCategScreen';

  /// widget screen
  static const widgetsScreen = '/widgetsScreen';


  /// route mapper
  static Route<dynamic> fromRoute(RouteSettings settings){
    switch(settings.name){
      case homeScreen :
        return MaterialPageRoute(
          settings: settings,
            builder: (_) => const HomeScreen()
        );
      case widgetCategoryScreen:
        final category = settings.arguments as ItemCategory;

        return MaterialPageRoute(
            settings: settings,
            builder: (_) => WidgetCategoryScreen(category: category,)
        );
      case widgetsScreen:
        final itemsList = settings.arguments as List<Item>;

        return MaterialPageRoute(
            settings: settings,
            builder: (_) => WidgetsScreen(itemsList: itemsList,)
        );

      default: throw UnsupportedError('UnkownRoute: ${settings.name}');
    }
  }




}