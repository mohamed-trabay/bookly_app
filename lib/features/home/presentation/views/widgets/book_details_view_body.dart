import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(

          children: [
            CustomBookDetailsAppbar(),
            BookDetailsSection()

          ],
        ),
      )
    );
  }
}
