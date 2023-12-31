import 'package:book/Features/home/presentation/views_model/views/side_bar_view.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static String id = 'Home View';


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideBarView(),
      resizeToAvoidBottomInset: false,
      body: HomeViewBody(),
    );
  }
}
