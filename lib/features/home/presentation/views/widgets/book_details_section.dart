import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .16),
          child: CustomBookImage(
            imageURL: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 40),
        Text(
          bookModel.volumeInfo.title,
          style: Styles.textStyle30,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
            color: kWhite70,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        BookRating(
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          rating: bookModel.volumeInfo.averageRating?.round() ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
        BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
