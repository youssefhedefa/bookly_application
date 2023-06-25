import 'package:book/Features/presentation/views_model/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static String id = 'Home View';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      //body: FTry(),
      body: HomeViewBody(),
    );
  }
}
