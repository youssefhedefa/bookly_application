import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/widgets/custom-app_bar.dart';
import '../core/widgets/custom_book_list.dart';
import '../core/widgets/custom_categories_list.dart';
import '../core/widgets/custom_recommended_list.dart';
import '../core/widgets/custom_text_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsetsDirectional.only(top: 18.0.h, start: 12.w, end: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomAppBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            const CustomTextField(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            const CustomCategoriesList(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16.0),
              child: Text(
                'New Books',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            const CustomBooksList(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16.0),
              child: Text(
                'recommended',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            const CustomRecommendedList(),

          ],
        ),
      ),
    );
  }
}
