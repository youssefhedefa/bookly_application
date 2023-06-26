import 'package:book/Features/presentation/views_model/views/book_details_view.dart';
import 'package:book/Features/presentation/views_model/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Features/presentation/views_model/views/home_view.dart';
import 'Features/presentation/views_model/views/side_bar_view.dart';

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
            scaffoldBackgroundColor:const Color.fromRGBO(28, 27, 31, 1),
            brightness: Brightness.dark,
            useMaterial3: true,
          ),
          routes: {
            HomeView.id: (context) =>const HomeView(),
            HomeViewBody.id: (context) => const HomeViewBody(),
            BookDetailsView.id: (context) => const BookDetailsView(),
            SideBarView.id: (context) => const SideBarView(),
          },
          home:const HomeView(),
        );
      },
    );
  }
}
