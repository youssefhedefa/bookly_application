import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor:const Color.fromRGBO(51, 51, 51, 0.7),
        prefixIcon: Icon(
          Icons.search_outlined,
          size: 28.sp,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
