import 'package:book/Features/presentation/views_model/views/side_bar_view.dart';
import 'package:book/Features/presentation/views_model/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);
  static String id = 'Settings View';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const SideBarView(),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 18.0.h, start: 16.w, end: 16.w),
        child:const Column(
          children: [
            CustomAppBar(
              title: 'Settings',
              leadingIcon: null,
            ),
          ],
        ),
      ),
    );
  }
}
