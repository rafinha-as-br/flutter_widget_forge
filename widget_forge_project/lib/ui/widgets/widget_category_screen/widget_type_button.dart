import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/type.dart';

import '../../../app/app_routes.dart';

/// Todo: need to refactor this widget, break into small pieces for future updates

class WidgetTypeButton extends StatelessWidget {
  const WidgetTypeButton({super.key, required this.type});

  final ItemType type;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(
            AppRoutes.widgetsScreen,
          arguments: type.items
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(type.typeBackgroundImage ?? ''),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 1.5,
                    sigmaY: 1.5,
                  ),
                  child: Container(
                    color: Colors.black.withAlpha(105),
                  ),
                ),
              ),
            ),

            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(130),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Icon(
                          type.typeIcon,
                          size: 70,
                          color: Colors.white,
                        ),
                        Text(
                          type.typeName,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                ),

                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      type.typeDescription,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
