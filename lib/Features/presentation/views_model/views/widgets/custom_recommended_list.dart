import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRecommendedList extends StatelessWidget {
  const CustomRecommendedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox (
      height: 80.h,
      child: ListView.builder(
        //shrinkWrap: true,
        //physics:const NeverScrollableScrollPhysics(),
        padding: EdgeInsetsDirectional.zero,
        itemBuilder: (context, index) => Container(
        height: 90.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(51, 51, 51, 1),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.all(10.0.h),
              child: Column(
                children: [
                  Text(
                    'Book name',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'author',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(103, 103, 103, 1),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(103, 103, 103, 1),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
        itemCount: 10,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
