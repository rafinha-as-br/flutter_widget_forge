/* this card is made up for showing ElevatedButtons */

import 'package:flutter/material.dart';

class ShowButtonCard extends StatelessWidget {
  const ShowButtonCard({super.key});

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
            Row(
              spacing: 6,
              children: [

                /// Radio button active
                _ToggleActiveButton(),

                /// radio button disabled
                InkWell(
                  onTap: (){
                    /// todo: Place this button on a separated file
                    /// todo: Call the change state method here (maybe create a sharedState on a provider?)
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.3,
                      ),
                      color:  Colors.transparent,
                    ),
                    child: Icon(
                      Icons.block,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),


              ],
            ),

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


class _ToggleActiveButton extends StatelessWidget {
  const _ToggleActiveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        /// todo: Place this button on a separated file
        /// todo: Call the change state method here (maybe create a sharedState on a provider?)
      },
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey,
            width: 2.3,
          ),
          color:  Colors.transparent,
        ),
        child: Icon(
          Icons.check_circle_outline_outlined,
          size: 20,
          color: Colors.grey,
        ),
      ),
    );
  }
}





/* mock data */
final _buttonExample = ElevatedButton(
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