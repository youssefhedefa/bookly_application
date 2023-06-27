import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../constance.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key, required this.bookName, required this.bookAuthor}) : super(key: key);
  final String bookName;
  final String bookAuthor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(end :16.0.w),
      child: Container(
        width: 160.w,
        height: 200.h,
        decoration: BoxDecoration(
          color:kShadowColor,
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
              bookName,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              bookAuthor,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(103, 103, 103, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
