<<<<<<< HEAD

import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
=======
import 'package:bookly_app/Core/Utils/Api_Service.dart';
import 'package:bookly_app/Features/Home/data/Repos/Home_Repo_Impl.dart';
>>>>>>> 17cd4fbb25e82f5c0726038907092082ad9f30e8
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:get/get.dart';
import 'package:bookly_app/core/Utils/Api_Service.dart';


final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
}
