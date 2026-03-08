import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/type.dart';
import 'package:widget_forge_project/ui/theme/app_theme.dart';

class ItemsScreenAppBar extends StatelessWidget {
  final ItemType type;
  const ItemsScreenAppBar({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 180,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      title: Text(
        type.typeName,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            if (type.typeBackgroundImage != null)
              Image.asset(
                type.typeBackgroundImage!,
                fit: BoxFit.cover,
              )
            else
              Container(color: Theme.of(context).colorScheme.primary),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(color: Theme.of(context).colorScheme.scrim.withAlpha(110)),
            ),
          ],
        ),
        titlePadding: const EdgeInsets.only(left: 16, bottom: 20, right: 16),
        centerTitle: true,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 5,
          children: [
            Text(
              type.typeName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Text(
              type.typeDescription,
              style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onPrimary.withAlpha(200)),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Transform.scale(
            scale: 1.2,
            child: ValueListenableBuilder<ThemeMode>(
              valueListenable: AppThemeController.instance.themeModeNotifier,
              builder: (context, themeMode, _) {
                final isDark = themeMode == ThemeMode.dark || 
                    (themeMode == ThemeMode.system && MediaQuery.platformBrightnessOf(context) == Brightness.dark);
                
                return Switch(
                  value: isDark,
                  onChanged: (value) {
                    AppThemeController.instance.toggleThemeMode();
                  },
                  thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
                    if (states.contains(WidgetState.selected)) {
                      return const Icon(Icons.dark_mode, size: 16, color: Colors.black87);
                    }
                    return const Icon(Icons.light_mode, size: 16, color: Colors.white );
                  }),
                  trackColor: WidgetStateProperty.resolveWith<Color?>((states) {
                     if (states.contains(WidgetState.selected)) {
                        return Colors.grey[800];
                     }
                     return Colors.grey[300];
                  }),
                );
              }
            ),
          ),
        ),
      ],
    );
  }
}
