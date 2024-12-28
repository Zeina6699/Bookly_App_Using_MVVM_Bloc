import 'package:bookly_app/Core/Utils/Errors/Failures.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures,List<BookModel>>> fetchFeaturedBooks();
}