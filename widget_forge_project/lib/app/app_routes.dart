/* this file contains the routes for the app */

import 'package:flutter/material.dart';
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
  static Route<dynamic> fromRoute(String? route){
    switch(route){
      case homeScreen :
        return MaterialPageRoute(
          settings: const RouteSettings(name: homeScreen),
            builder: (_) => const HomeScreen()
        );
      case widgetCategoryScreen:
        return MaterialPageRoute(
            settings: const RouteSettings(name: widgetCategoryScreen),
            builder: (_) => const WidgetCategoryScreen()
        );
      case widgetsScreen:
        return MaterialPageRoute(
            settings: const RouteSettings(name: widgetsScreen),
            builder: (_) => const WidgetsScreen()
        );

      default: throw UnsupportedError('UnkownRoute: $route');
    }
  }




}