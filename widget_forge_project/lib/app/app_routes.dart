/* this file contains the routes for the app */

import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/category.dart';
import 'package:widget_forge_project/data/entities/type.dart';
import 'package:widget_forge_project/ui/screens/screen_items.dart';

import '../ui/screens/screen_home.dart';
import '../ui/screens/screen_item_category.dart';


abstract class AppRoutes {

  /// home screen
  static const homeScreen = '/';

  /// widget category screen
  static const itemCategoryScreen = '/itemCategScreen';

  /// widget screen
  static const itemsScreen = '/itemsScreen';


  /// route mapper
  static Route<dynamic> fromRoute(RouteSettings settings){
    switch(settings.name){
      case homeScreen :
        return MaterialPageRoute(
          settings: settings,
            builder: (_) => const HomeScreen()
        );
      case itemCategoryScreen:
        final category = settings.arguments as ItemCategory;

        return MaterialPageRoute(
            settings: settings,
            builder: (_) => ItemCategoryScreen(category: category,)
        );
      case itemsScreen:
        final itemType = settings.arguments as ItemType;

        return MaterialPageRoute(
            settings: settings,
            builder: (_) => ItemsScreen(itemType: itemType,)
        );

      default: throw UnsupportedError('UnkownRoute: ${settings.name}');
    }
  }




}