import 'package:flutter/material.dart';

class ShowWidgetCard extends StatelessWidget {
  const ShowWidgetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Stack( /// todo: Change the Stack for a Column, for the widget: Use CrossAxisAlign center
          children: [

            /// State buttons
            Positioned(
              right: 0,
              top: 0,
              child: Row(
                spacing: 6,
                children: [

                  /// Radio button active
                  InkWell(
                    onTap: (){
                      /// todo: Place this button on a separated file
                      /// todo: Call the change state method here (maybe create a sharedState on a provider?)
                    },
                    borderRadius: BorderRadius.circular(12),
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
                        Icons.fiber_smart_record_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  /// radio button disabled
                  InkWell(
                  onTap: (){
                    /// todo: Place this button on a separated file
                    /// todo: Call the change state method here (maybe create a sharedState on a provider?)
                  },
                  borderRadius: BorderRadius.circular(12),
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
                      Icons.block,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),


                ],
              )
            ),

            Positioned(
              left: 0,
              top: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [

                // widget title
                Text(
                  'Botão sólido 1',

                  /// todo: Get the widget name on the constructor

                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),
                ),

                // widget Description
                Text(
                  'Descrição do botão',

                  /// todo: get the widget description from the constructor

                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                ],
              )
            ),

            /// todo: Call the widget on the constructor

            // the widget itself
            Positioned(
              bottom: 0,
                left: 50,
                right: 50,
                child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
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
                  ),
                )
            )




          ],
        ),
      ),
    );
  }
}
