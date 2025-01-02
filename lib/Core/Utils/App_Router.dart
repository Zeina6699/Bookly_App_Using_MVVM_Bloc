import 'package:bookly_app/Features/Splash/Presentaion/Views/Splash_View.dart';
import 'package:bookly_app/Features/home/presentation/Views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/Views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

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
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
