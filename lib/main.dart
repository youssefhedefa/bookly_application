import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/home/presentation/views_model/views/book_details_view.dart';
import 'Features/home/presentation/views_model/views/favorites_view.dart';
import 'Features/home/presentation/views_model/views/home_view.dart';
import 'Features/home/presentation/views_model/views/settings_view.dart';
import 'Features/home/presentation/views_model/views/side_bar_view.dart';
import 'Features/home/presentation/views_model/views/widgets/home_view_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            scaffoldBackgroundColor:const Color.fromRGBO(54, 54, 54, 1),
            brightness: Brightness.dark,
            useMaterial3: true,
            textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),

          routes: {
            HomeView.id: (context) =>const HomeView(),
            HomeViewBody.id: (context) => const HomeViewBody(),
            BookDetailsView.id: (context) => const BookDetailsView(),
            SideBarView.id: (context) => const SideBarView(),
            FavoritesView.id: (context) => const FavoritesView(),
            SettingsView.id:(context)=> const SettingsView(),
          },
          home:const HomeView(),
         // home: const AppTry(),
        );
      },
    );
  }
}
