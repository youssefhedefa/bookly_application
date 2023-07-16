import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../itemDesign/custom_category_item.dart';

class CustomDetailBookButton extends StatelessWidget {
  const CustomDetailBookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: 12.h,
        start: 22.0.w,
        end: 22.0.w,
      ),
      child: Row(
        children: [
          const CustomCategoryItem(category: 'design'),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.download_outlined,
              size: 36.sp,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.heart,
              size: 36.sp,
            ),
          ),
        ],
      ),
    );
  }
}
