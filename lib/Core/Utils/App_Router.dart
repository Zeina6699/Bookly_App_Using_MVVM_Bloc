import 'package:bookly_app/Features/Home/Presentation/Manager/recommended_books_cubit/Recommended_Books_Cubit.dart';
import 'package:bookly_app/Features/Home/data/models/bookModel/book_model.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/Home/presentation/views/Book_Details_View.dart';
import 'package:bookly_app/Features/Home/presentation/views/Home_View.dart';
import 'package:bookly_app/Features/Search/presentation/views/Search_View.dart';
import 'package:bookly_app/Features/Splash/Presentaion/Views/Splash_View.dart';
import 'package:bookly_app/core/Utils/service_locator.dart';

abstract class AppRouter {


 static final router = GoRouter(
    routes: [
     
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: "/search",
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/details',
        builder: (context, state) => BlocProvider(
          create: (context) => RecommendedBooksCubit(
            getIt.get<HomeRepoImpl>() as HomeRepo 
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
