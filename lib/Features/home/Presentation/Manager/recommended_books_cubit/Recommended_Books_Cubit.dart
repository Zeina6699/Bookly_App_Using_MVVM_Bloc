import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/bookModel/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'Recommendad_Books_State.dart';

class RecommendedBooksCubit extends Cubit<RecommendedBooksState> {
  RecommendedBooksCubit(this.homeRepo) : super(RecommendedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchRecommendedBooks({required String category}) async {
    emit(RecommendedBooksLoading());
    var result = await homeRepo.fetchRecommendedBooks(category: category);
    result.fold((failure) {
      emit(RecommendedBooksFailure(failure.errMessage));
    }, (books) {
      emit(RecommendedBooksSuccess(books));
    });
  }
}
