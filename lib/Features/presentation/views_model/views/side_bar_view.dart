import 'package:book/Features/presentation/views_model/views/widgets/custom_button.dart';
import 'package:book/Features/presentation/views_model/views/widgets/custom_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBarView extends StatelessWidget {
  const SideBarView({Key? key}) : super(key: key);
  static String id = 'Side Bar View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Drawer(
        child: Container(
          height: double.infinity,
          width: 288.w,
          color: Colors.blueAccent,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                const CustomProfileCard(name: 'Youssef'),
                SizedBox(
                  height: 42.h,
                ),
                const CustomButton(icon: Icons.home_outlined,text: 'Home',),
                SizedBox(
                  height: 32.h,
                ),
                const CustomButton(icon: Icons.favorite_outline,text: 'Favorite',),
                SizedBox(
                  height: 32.h,
                ),
                const CustomButton(icon: Icons.settings_outlined,text: 'Settings',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

