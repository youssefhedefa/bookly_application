import 'package:book/core/utils/widgets/cached_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../constance.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key, required this.bookName, required this.bookAuthor, required this.bookImage}) : super(key: key);
  final String bookName;
  final String bookAuthor;
  final String bookImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(end :16.0.w),
      child: Container(
        width: 156.w,
        height: 240.h,
        decoration: BoxDecoration(
          color:kShadowColor,
          borderRadius: BorderRadius.circular(18),
        ),
        padding: EdgeInsetsDirectional.only(top: 10.h,start: 10.w,end: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(20),
              child: AspectRatio(
                aspectRatio: 140.w/140.h,
                child: CachedImage(bookImage: bookImage,),
              ),
            ),
            SizedBox(height: 8.h,),
            Text(
              bookName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4.h,),
            //const Spacer(),
            Text(
              bookAuthor,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
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
