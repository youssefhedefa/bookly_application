import 'package:book/Features/home/presentation/manager/homeCubit/home_cubit.dart';
import 'package:book/Features/home/presentation/manager/homeCubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../itemDesign/custom_category_item.dart';

class CustomCategoriesList extends StatelessWidget {
  const CustomCategoriesList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   final List<String> categories = ['Sports','Design','Cooking','Islamic','Programming'];
    return BlocBuilder<HomeCubit,HomeStates>(

      builder: (context,state)
      {
        var homeCubit = BlocProvider.of<HomeCubit>(context);
        return SizedBox(
          height: 50.h,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsetsDirectional.only(end: 18.0.w),
              child:  GestureDetector(
                onTap: ()
                {
                  homeCubit.setCategoryType(categories[index]);
                  homeCubit.fetchRecommendedBooks();
                  homeCubit.fetchNewestBooks();
                  homeCubit.fetchNewBooks();

                },
                child: CustomCategoryItem(category: categories[index]),),
            ),
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}
