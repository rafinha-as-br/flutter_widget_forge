import 'package:flutter/material.dart';

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
            _ShowButtonCardHeader(buttonName: buttonName, buttonDescription: buttonDescription,),

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
                  fontWeight: FontWeight.w500
              ),
            ),

            /// State buttons
            _StateButtons()

          ],
        ),

        // widget Description
        Text(
          buttonDescription,
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
