import 'package:bookly_app/Core/Utils/Api_Service.dart';
import 'package:bookly_app/Core/Utils/Errors/Failures.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/Repos/Home_Repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


class HomeRepoImpl implements HomeRepo{

  final ApiService apiService;

  HomeRepoImpl( this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
   try {
  var data=await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');
List<BookModel> books=[];
for(var item in data["item"]){
  books.add(BookModel.fromJson(item));}
  return right(books);

} 
on Exception catch (e) {
  if(e is DioException){
  return left(ServerFailures.fromDioError(e));}
  return left(ServerFailures(e.toString()));
}

  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks()async{
    try {
  var data=await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
List<BookModel> books=[];
for(var item in data["item"]){
  books.add(BookModel.fromJson(item));}
  return right(books);

} 
on Exception catch (e) {
  if(e is DioException){
  return left(ServerFailures.fromDioError(e));}
  return left(ServerFailures(e.toString()));
}

  }

}