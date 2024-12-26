import 'package:bookly_app/Features/Search/Presentation/Views/Search_View.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/widgets/Search_View_Body.dart';
import 'package:bookly_app/Features/Splash/Presentaion/Views/Splash_View.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Book_Details_View.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Home_View.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter {

static  final router=GoRouter(
routes: [
GoRoute(path: '/',builder: (Context,state)=>const SplashView()),
GoRoute(path: '/home',builder: (Context,state)=>const HomeView()),
GoRoute(path: '/details',builder: (Context,state)=>const BookDetailsView()),
GoRoute(path: '/search',builder: (Context,state)=>const SearchView()),



]);
}