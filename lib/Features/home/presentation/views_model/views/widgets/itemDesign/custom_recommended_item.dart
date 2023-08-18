import 'package:book/core/utils/widgets/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../constance.dart';

class CustomRecommendedItem extends StatelessWidget {
  const CustomRecommendedItem(
      {Key? key,
      required this.bookName,
      required this.authorName,
      required this.description, required this.bookImage})
      : super(key: key);
  final String bookName;
  final String authorName;
  final String description;
  final String bookImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 10.0),
      child: Container(
        height: 170.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kShadowColor,
        ),
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 8.0.w, top: 8.h, bottom: 8.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 0.75 / 1,
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  child: CachedImage(bookImage: bookImage),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.all(10.0.h),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // dirty code ***************************************
                      Text(
                        bookName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 3.h,),
                      Text(
                        authorName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: kAuthorNameColor,
                        ),
                      ),
                      SizedBox(height: 3.h,),
                      Text(
                        description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: kAuthorNameColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
