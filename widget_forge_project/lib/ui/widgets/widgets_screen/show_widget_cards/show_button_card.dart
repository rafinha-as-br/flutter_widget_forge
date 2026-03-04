/* this card is made up for showing ElevatedButtons */

import 'package:flutter/material.dart';

enum ButtonState{
  normal,
  pressed,
  disabled
}

class ShowButtonCard extends StatelessWidget {
  const ShowButtonCard({super.key});


  /// Todo: Call the ButtonCategory entity here!


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          children: [

            /// header
            _ShowButtonCardHeader(),

            // the widget itself
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buttonExample, /// todo: Call the widget on the constructor
            )





          ],
        ),
      ),
    );
  }
}

class _ShowButtonCardHeader extends StatelessWidget {
  const _ShowButtonCardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // widget title
            Text(
              _buttonName, /// todo: Get the widget name on the constructor
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),
            ),

            /// State buttons
            _StateButtons()

          ],
        ),

        // widget Description
        Text(
          _buttonDescription, /// todo: get the widget description from the constructor
          style: TextStyle(
            fontSize: 16,
          ),
        ),


      ],
    );
  }
}


class _StateButtons extends StatefulWidget {
  const _StateButtons({super.key});

  @override
  State<_StateButtons> createState() => _StateButtonsState();
}

class _StateButtonsState extends State<_StateButtons> {

  ButtonState buttonState = ButtonState.normal;

  @override
  void initState() {
    super.initState();
    buttonState = ButtonState.normal;
  }


  @override
  Widget build(BuildContext context) {
    return RadioGroup<ButtonState>(
        onChanged: (state){
          setState(() {
            buttonState = state!;
          });
        },
        groupValue: buttonState,
        child: Row(
          spacing: 5,
        children: [

          /// normal ButtonState
          _radioButton(ButtonState.normal, Icons.check),

          /// pressed ButtonState
          _radioButton(ButtonState.pressed, Icons.touch_app_outlined),

          /// Disabled ButtonState
          _radioButton(ButtonState.disabled, Icons.do_not_touch)


      ],
    ));
  }

  Widget _radioButton(ButtonState state, IconData icon){
    return Stack(
      children: [
        Positioned(
            top: 5,
            bottom: 5,
            right: 5,
            left: 5,
            child: Icon(
              icon,
              size: 20,
              color: buttonState == state? Colors.white : Colors.black12,
            )
        ),
        Transform.scale(
          scale: 2,
          child: Radio(
            value: state,
            innerRadius: WidgetStatePropertyAll(0),
            fillColor: WidgetStateProperty<Color?>.fromMap(
              <WidgetStatesConstraint, Color?>
              {
                WidgetState.selected: Colors.white,
                WidgetState.any: Colors.black12,
              }
            ),

          ),
        ),
      ],
    );
  }

} /// Todo: Change the radio value from enum to the WidgetStatesController of the object




/* mock data */
final _buttonExample = ElevatedButton(
  statesController: WidgetStatesController(),
  onPressed: () {

  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 12,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 4,
  ),
  child: const Text(
    "Botão exemplo",
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  ),
);
final _buttonDescription = 'O Elevated Button é um botão com elevação que expressa maior ênfase e hierarquia visual na interface. Sua sombra característica cria uma sensação de profundidade, indicando que o elemento é interativo e importante.';
final _buttonName = 'Botão sólido 1';




/* Future updates:
*
* - Apply a provider above the card to supply the states for the "state buttons" (create a controller)
*
*
* */