import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomBooksList extends StatelessWidget {
  const CustomBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:220.h,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(end :16.0),
          child: Container(
            width: 160.w,
            height: 220.h,
            decoration: BoxDecoration(
              color:const Color.fromRGBO(51, 51, 51, 0.7),
              borderRadius: BorderRadius.circular(18),
            ),
            padding: EdgeInsetsDirectional.only(top: 10.h,start: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 140.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(height: 8.h,),
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
              ],
            ),
          ),
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
