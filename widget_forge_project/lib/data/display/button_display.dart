import 'package:flutter/material.dart';

/// Todo: Need to refactor this Card, maybe try to do an implement or extends of ButtonItemType!


class ButtonDisplayerCard extends StatelessWidget {
  const ButtonDisplayerCard({
    super.key,
    required this.buttonName,
    required this.buttonDescription,
    required this.buttonController,
    required this.buttonWidget,
  });

  final String buttonName;
  final String buttonDescription;
  final WidgetStatesController buttonController;
  final Widget buttonWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          children: [

            /// header
            _ShowButtonCardHeader(buttonName: buttonName, buttonDescription: buttonDescription, buttonController: buttonController,),

            // the widget itself
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buttonWidget,
            )





          ],
        ),
      ),
    );
  }
}

class _ShowButtonCardHeader extends StatelessWidget {
  const _ShowButtonCardHeader({
    required this.buttonName,
    required this.buttonDescription,
    required this.buttonController,
  });

  final String buttonName;
  final String buttonDescription;
  final WidgetStatesController buttonController;

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
              buttonName,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            /// State buttons
            _StateButtons(buttonController: buttonController,)

          ],
        ),

        // widget Description
        Text(
          buttonDescription,
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),


      ],
    );
  }
}


class _StateButtons extends StatefulWidget {
  const _StateButtons({required this.buttonController});

  final WidgetStatesController buttonController;

  @override
  State<_StateButtons> createState() => _StateButtonsState();
}

class _StateButtonsState extends State<_StateButtons> {

  late _ButtonState buttonState;

  @override
  void initState() {
    super.initState();
    buttonState = _ButtonState.normal;

  }


  @override
  Widget build(BuildContext context) {
    return RadioGroup<_ButtonState>(
        onChanged: (state){
          setState(() {
            switch(state){
              case _ButtonState.normal :
                buttonState = state!;
                widget.buttonController.update(WidgetState.disabled, false);
                widget.buttonController.update(WidgetState.pressed, false);
              case _ButtonState.pressed:
                buttonState = state!;
                widget.buttonController.update(WidgetState.disabled, false);
                widget.buttonController.update(WidgetState.pressed, true);
              case _ButtonState.disabled:
                buttonState = state!;
                widget.buttonController.update(WidgetState.disabled, true);
                widget.buttonController.update(WidgetState.pressed, false);
              default:
            }

          });
        },
        groupValue: buttonState,
        child: Row(
          spacing: 5,
          children: [

            /// normal ButtonState
            _radioButton(_ButtonState.normal, Icons.check, context),

            /// pressed ButtonState
            _radioButton(_ButtonState.pressed, Icons.touch_app_outlined, context),

            /// Disabled ButtonState
            _radioButton(_ButtonState.disabled, Icons.do_not_touch, context)


          ],
        ));
  }


  Widget _radioButton(_ButtonState state, IconData icon, BuildContext context){
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
              color: buttonState == state ?
              Theme.of(context).colorScheme.primary
                :
              Theme.of(context).colorScheme.onSurface.withAlpha(100),
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
                  WidgetState.selected: Theme.of(context).colorScheme.primary,
                  WidgetState.any: Theme.of(context).colorScheme.onSurface.withAlpha(30),
                }
            ),

          ),
        ),
      ],
    );
  }



}

enum _ButtonState{
  normal,
  pressed,
  disabled
}
