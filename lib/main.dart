import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Utils/App_Router.dart';
import 'package:bookly_app/Core/Utils/Service_Locator.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/data/Repos/Home_Repo_Impl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
     providers:[
      BlocProvider(create:(context)=>FeaturedBooksCubit(getIt.get<HomeRepoImpl>()..fetchFeaturedBooks())),
      BlocProvider(create:(context)=>FeaturedBooksCubit(getIt.get<HomeRepoImpl>()))
      ], 
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Pcolor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
