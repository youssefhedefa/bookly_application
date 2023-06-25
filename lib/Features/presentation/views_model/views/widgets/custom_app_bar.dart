import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.leadingIcon,
    this.backGroundColor,
  }) : super(key: key);
  final String title;
  final Widget leadingIcon;
  final Color? backGroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: backGroundColor,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 26.sp,
        ),
      ),
      centerTitle: false,
      titleSpacing: -2,
      leading: leadingIcon,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_outlined,
            size: 36.sp,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
