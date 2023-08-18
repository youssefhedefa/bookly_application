import 'package:book/Features/home/presentation/views_model/views/widgets/custom_button.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/custom_profile_card.dart';
import 'package:book/core/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../favourite/presentation/views/favorites_view.dart';
import 'home_view.dart';
import 'settings_view.dart';

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
          color: const Color.fromRGBO(44, 44, 45, 1),
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
                const CustomButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                  navigationPlace: MyRoutes.kHome,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const CustomButton(
                  icon: Icons.favorite_outline,
                  text: 'Favorite',
                  navigationPlace: MyRoutes.kFavorites,
                ),
                SizedBox(
                  height: 32.h,
                ),
                 const CustomButton(
                  icon: Icons.settings_outlined,
                  text: 'Settings',
                  navigationPlace: MyRoutes.kSettings,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
