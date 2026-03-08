import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/type.dart';

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
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
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
              Container(color: Colors.grey[800]),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(color: Colors.black.withAlpha(110)),
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
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              type.typeDescription,
              style: const TextStyle(fontSize: 12, color: Colors.white),
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
            child: Switch(
              value: false,

              /// todo: replace the value for a bool checker (aka: Theme of context is dark? true : false,)
              onChanged: (value) {
                /// todo: call toggle theme method here
              },

              /// todo: replace the background color of the Icon as transparent
              thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
                if (states.contains(WidgetState.selected)) {
                  return const Icon(Icons.dark_mode, size: 16);
                }
                return const Icon(Icons.light_mode, size: 16);
              }),
            ),
          ),
        ),
      ],
    );
  }
}
