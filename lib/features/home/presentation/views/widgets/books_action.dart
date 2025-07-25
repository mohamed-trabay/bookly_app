import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row
        (
          children: [
          Expanded(
            child: CustomButton(backgroundColor: Colors.white, textColor: Colors.black,
            buttonText: '19.99€',
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)
                ),),
          ),

           Expanded(
             child: CustomButton(backgroundColor: Color(
                     0XFFEF8262),
               fontSize:18,textColor: Colors.white,
                 borderRadius: BorderRadius.only(
                 topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
             ),
           )
      ],
      ),
    );
  }
}
