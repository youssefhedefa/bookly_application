import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../constance.dart';
import '../../../../../../core/utils/assets.dart';

class CustomRecommendedItem extends StatelessWidget {
  const CustomRecommendedItem(
      {Key? key,
      required this.bookName,
      required this.authorName,
      required this.description})
      : super(key: key);
  final String bookName;
  final String authorName;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 10.0),
      child: Container(
        height: 166.h,
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
                child: Container(
                  // width: 80.w,
                  // height: 80.h,
                  decoration: BoxDecoration(
                    // color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(AssetsData.testCoverImage),
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
                  ),
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
