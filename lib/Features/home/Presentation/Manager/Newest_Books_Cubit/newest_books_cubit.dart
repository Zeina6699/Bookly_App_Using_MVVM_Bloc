import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/Repos/Home_Repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubitCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubitCubit(this.homeRepo) : super(NewestBooksCubitInitial());

  final HomeRepo homeRepo;
  Future<void>fetchNewestBooks()async{
    emit(NewestBooksCubitLoading());
    var result=await homeRepo.fetchFeaturedBooks();
    result.fold((failure)=>emit(NewestBooksCubitFailure(failure.errorMessage)),(books)=>emit(NewestBooksCubitSucces(books)));

  }
}
