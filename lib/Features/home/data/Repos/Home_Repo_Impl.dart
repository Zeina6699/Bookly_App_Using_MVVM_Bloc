import 'package:bookly_app/Core/Utils/Errors/Failures.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/Repos/Home_Repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}