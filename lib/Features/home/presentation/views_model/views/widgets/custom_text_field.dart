import 'package:book/core/utils/constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, this.enabled, this.onChanged}) : super(key: key);
  final bool? enabled;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        enabled: enabled ?? false,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor:kShadowColor,
          prefixIcon: Icon(
            Icons.search_outlined,
            size: 28.sp,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
