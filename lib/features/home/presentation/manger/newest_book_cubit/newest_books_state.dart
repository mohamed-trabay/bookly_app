part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestInitial extends NewestBooksState {}

final class NewestLoading extends NewestBooksState {}

final class NewestFailure extends NewestBooksState {
  final String errMessage;

  const NewestFailure({required this.errMessage});
}

final class NewestSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewestSuccess({required this.books});
}
