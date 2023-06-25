import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_app_bar.dart';
import 'custom_text.dart';
import 'custom_text_field.dart';
import 'listDesign/custom_book_list.dart';
import 'listDesign/custom_categories_list.dart';
import 'listDesign/custom_recommended_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);
  static String id = 'Home View Body';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 18.0.h, start: 16.w, end: 16.w),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomAppBar(
              title: 'Bookly',
              leadingIcon: Icon(
                Icons.menu_book_outlined,
                size: 36.sp,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
          ),
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            pinned: true,
            bottom:  PreferredSize(
              preferredSize: Size.fromHeight(-30.h), child:const SizedBox(),),
            flexibleSpace: const CustomTextField(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
          ),
          const SliverToBoxAdapter(child:  CustomText(text: 'Categories')),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
          ),
          const SliverToBoxAdapter(child:  CustomCategoriesList()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
          ),
          const SliverToBoxAdapter(child: CustomText(text:'New Books')),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
          ),
          const SliverToBoxAdapter(child: CustomBooksList()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
          ),
          const SliverToBoxAdapter(child:  CustomText(text: 'recommended')),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
          ),
          const SliverToBoxAdapter(child:  CustomRecommendedList()),
        ],
      ),
    );
  }
}
