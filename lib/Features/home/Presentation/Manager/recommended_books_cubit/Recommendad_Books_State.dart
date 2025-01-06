part of 'Recommended_Books_Cubit.dart';

abstract class RecommendedBooksState extends Equatable {
  const RecommendedBooksState();

  @override
  List<Object> get props => [];
}

class RecommendedBooksInitial extends RecommendedBooksState {}

class RecommendedBooksFailure extends RecommendedBooksState {
  final String errMessage;

  const RecommendedBooksFailure(this.errMessage);
}

class RecommendedBooksSuccess extends RecommendedBooksState {
  final List<BookModel> books;

  const RecommendedBooksSuccess(this.books);
}

class RecommendedBooksLoading extends RecommendedBooksState {}
