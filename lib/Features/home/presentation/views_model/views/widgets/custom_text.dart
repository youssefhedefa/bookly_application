import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
