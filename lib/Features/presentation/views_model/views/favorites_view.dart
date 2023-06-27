import 'package:book/Features/presentation/views_model/views/side_bar_view.dart';
import 'package:book/Features/presentation/views_model/views/widgets/custom_app_bar.dart';
import 'package:book/Features/presentation/views_model/views/widgets/itemDesign/custom_recommended_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);
  static String id = 'Favorites View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBarView(),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 18.0.h, start: 16.w, end: 16.w),
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Favorites',
              leadingIcon: null,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsetsDirectional.only(top: 18.h),
                physics: const ClampingScrollPhysics(),
                itemCount: 30,
                itemBuilder: (context,index)=> CustomRecommendedItem(bookName: 'Book Name $index', authorName: 'book Author $index', description: 'Description $index',),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
