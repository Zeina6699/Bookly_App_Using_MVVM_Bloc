<<<<<<< HEAD

import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presentation/Manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/Manger/newest_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/Utils/App_Router.dart';
import 'package:bookly_app/core/Utils/Service_locator.dart';
import 'package:flutter/material.dart';
=======
import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Utils/App_Router.dart';
import 'package:bookly_app/Core/Utils/Service_Locator.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/data/Repos/Home_Repo_Impl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
>>>>>>> 17cd4fbb25e82f5c0726038907092082ad9f30e8
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>() as HomeRepo,
          ),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
