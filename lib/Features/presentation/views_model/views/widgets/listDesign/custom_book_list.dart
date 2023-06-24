import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../itemDesign/custom_book_item.dart';
class CustomBooksList extends StatelessWidget {
  const CustomBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:220.h,
      child: ListView.builder(
        itemBuilder: (context, index) => const CustomBookItem(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
