import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../constance.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 46.h,
      decoration: BoxDecoration(
        color: kShadowColor,
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.center,
      child: Text(
        'Design',
        style: TextStyle(fontSize: 18.sp),
      ),
    );
  }
}
