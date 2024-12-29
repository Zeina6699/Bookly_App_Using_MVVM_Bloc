import 'package:bookly_app/Core/Utils/Api_Service.dart';
import 'package:bookly_app/Features/Home/data/Repos/Home_Repo.dart';
import 'package:bookly_app/Features/Home/data/Repos/Home_Repo_Impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt= GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<AuthRepo>(AuthRepo(getIt.get<ApiService>()));
  
}
class AuthRepo{
  final ApiService apiService;

  AuthRepo(this.apiService);
}