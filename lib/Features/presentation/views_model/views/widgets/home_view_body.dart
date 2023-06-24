import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_app_bar.dart';
import 'listDesign/custom_book_list.dart';
import 'listDesign/custom_categories_list.dart';
import 'listDesign/custom_recommended_list.dart';
import 'custom_text.dart';
import 'custom_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsetsDirectional.only(top: 18.0.h, start: 16.w, end: 16.w),
      child: SingleChildScrollView(
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
            const CustomText(text: 'Categories'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            const CustomCategoriesList(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
            const CustomText(text:'New Books'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            const CustomBooksList(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
            const CustomText(text: 'recommended'),
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
