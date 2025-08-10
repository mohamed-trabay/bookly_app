import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                backgroundColor: Colors.white,
                textColor: Colors.black,
                buttonText: 'Free',
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
                onPressed: () {}),
          ),
          Expanded(
            child: CustomButton(
              buttonText: 'Perview',
              backgroundColor: const Color(0XFFEF8262),
              fontSize: 18,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
