import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../itemDesign/custom_category_item.dart';

class CustomCategoriesList extends StatelessWidget {
  const CustomCategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(end: 18.0.w),
          child:  CustomCategoryItem(category: 'Design $index'),
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
