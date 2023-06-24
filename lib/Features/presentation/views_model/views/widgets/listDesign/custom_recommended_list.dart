import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../itemDesign/custom_recommended_item.dart';

class CustomRecommendedList extends StatelessWidget {
  const CustomRecommendedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox (
      height: 80.h,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsetsDirectional.zero,
        itemBuilder: (context, index) =>const CustomRecommendedItem(),
        itemCount: 10,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
