import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/utils/constance.dart';

class DescriptionPart extends StatelessWidget {
  const DescriptionPart({Key? key, required this.des}) : super(key: key);

  final String des;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 22.0.w,
            end: 22.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                des,
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
    );
  }
}
