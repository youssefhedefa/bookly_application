import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_app_bar.dart';

class DetailViewAppBar extends StatelessWidget {
  const DetailViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          top: 18.0.h, start: 16.w, end: 16.w),
      child: CustomAppBar(
        backGroundColor: const Color.fromRGBO(67, 67, 67, 1),
        title: '',
        leadingIcon: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 36.sp,
          ),
        ),
      ),
    );
    
  }
}
