import 'package:book/Features/favourite/presentation/manager/favourite_cubit.dart';
import 'package:book/Features/favourite/presentation/manager/favourite_states.dart';
import 'package:book/core/utils/cach_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../itemDesign/custom_category_item.dart';

class CustomDetailBookButton extends StatelessWidget {
  const CustomDetailBookButton({Key? key, required this.id, required this.category}) : super(key: key);

  final String id;
  final String category;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCubit,FavouritesStates>(
      builder: (context, state) {
        var fCubit = BlocProvider.of<FavouriteCubit>(context);
        return Padding(
          padding: EdgeInsetsDirectional.only(
            top: 12.h,
            start: 22.0.w,
            end: 22.0.w,
          ),
          child: Row(
            children: [
              CustomCategoryItem(category: category),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.download_outlined,
                  size: 36.sp,
                ),
              ),
              IconButton(
                onPressed: () {
                  fCubit.addToFavourites(id);
                  CacheHelper.setFavourites(fCubit.getFavourites(),);
                  print(fCubit.getFavourites());
                },
                icon: Icon(
                  CupertinoIcons.heart,
                  size: 36.sp,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
