part of 'newest_books_cubit.dart';

abstract class NewestBooksCubitState extends Equatable {
  const NewestBooksCubitState();

  @override
  List<Object> get props => [];
}

class NewestBooksCubitInitial extends NewestBooksCubitState {}
class NewestBooksCubitLoading extends NewestBooksCubitState {}


class NewestBooksCubitSucces extends NewestBooksCubitState {
final List<BookModel>bools;
const NewestBooksCubitSucces(this.bools);}


class NewestBooksCubitFailure extends NewestBooksCubitState {
final String errorMessage;
const NewestBooksCubitFailure(this.errorMessage);}

