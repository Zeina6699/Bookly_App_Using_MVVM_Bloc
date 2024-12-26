import 'package:bookly_app/Features/Splash/Presentaion/Views/Splash_View.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Home_View.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter {

static  final router=GoRouter(
routes: [
GoRoute(path: '/',builder: (Context,state)=>SplashView()),
GoRoute(path: '/home',builder: (Context,state)=>HomeView())


]);
}