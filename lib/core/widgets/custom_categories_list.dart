import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoriesList extends StatelessWidget {
  const CustomCategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(end: 18.0.w),
          child: Container(
            width: 100.w,
            height: 46.h,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(51, 51, 51, 0.7),
              borderRadius: BorderRadius.circular(40),
            ),
            alignment: Alignment.center,
            child: Text(
              'Design',
              style: TextStyle(fontSize: 18.sp),
            ),
          ),
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
