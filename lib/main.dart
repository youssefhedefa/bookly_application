import 'package:book/Features/favourite/presentation/manager/favourite_cubit.dart';
import 'package:book/Features/home/data/repo/home_repo.dart';
import 'package:book/Features/home/data/repo/home_repo_imple.dart';
import 'package:book/Features/home/presentation/manager/homeCubit/home_cubit.dart';
import 'package:book/core/utils/api_request.dart';
import 'package:book/core/utils/api_service.dart';
import 'package:book/core/utils/cach_helper.dart';
import 'package:book/core/utils/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bloc_observer.dart';
import 'core/utils/my_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  ApiService.init();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(getIt.get<HomeRepoImpl>())
            ..fetchNewBooks()
            ..fetchNewestBooks()
            ..fetchRecommendedBooks(),
        ),
        BlocProvider(
          create: (context) => FavouriteCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Bookly',
            theme: ThemeData(
              scaffoldBackgroundColor: const Color.fromRGBO(54, 54, 54, 1),
              brightness: Brightness.dark,
              useMaterial3: true,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            ),
            onGenerateRoute: MyRoutes.generateRoute,
            initialRoute: '/',
          );
        },
      ),
    );
  }
}
