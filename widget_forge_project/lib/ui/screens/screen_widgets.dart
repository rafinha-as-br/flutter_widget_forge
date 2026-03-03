/* this screen is responsible for showing the widgets from a selected
* widget category */

import 'dart:ui';

import 'package:flutter/material.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 180,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            title: Text(
              'Visualizar widgets',

              /// todo: Maybe think about a better title....


              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),
            ),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/buttons_background.jpg',

                    /// todo: Replace for a external variable (maybe an entity that has the image, name and widget lists?

                    fit: BoxFit.cover,
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      color: Colors.black.withAlpha(110),
                    ),
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
                    'Solid Buttons',

                    /// Todo: Replace for external variable (name)


                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    'Botões com fundo sólido, ideal para ações primárias',

                    /// TODO: Replace for external variable (description)



                    style: TextStyle(
                        fontSize: 12,
                      color: Colors.white
                    ),
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


                    thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                          (states) {
                        if (states.contains(WidgetState.selected)) {
                          return const Icon(Icons.dark_mode, size: 16);
                        }
                        return const Icon(Icons.light_mode, size: 16);
                      },
                    ),
                  ),
                ),
              ),
            ],
          )

          /// Todo: Place the SliverList here with the ShowWidgetCard()


        ],
      ),
    );
  }
}

