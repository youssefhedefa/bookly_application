import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      title: Text(
        'Bookly',
        style: TextStyle(
          fontSize: 26.sp,
        ),
      ),
      centerTitle: false,
      titleSpacing: -2,
      leading: Icon(
        Icons.menu_book_outlined,
        size: 36.sp,
      ),
      actions: [
        IconButton(
          onPressed: (){},
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
