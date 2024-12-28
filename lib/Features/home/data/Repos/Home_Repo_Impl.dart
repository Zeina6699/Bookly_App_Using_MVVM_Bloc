import 'package:bookly_app/Core/Utils/Api_Service.dart';
import 'package:bookly_app/Core/Utils/Errors/Failures.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/Repos/Home_Repo.dart';
import 'package:dartz/dartz.dart';

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
  return left(ServerFailures());
}

  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}