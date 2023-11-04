import 'package:book/Features/favourite/presentation/manager/favourite_cubit.dart';
import 'package:book/Features/favourite/presentation/manager/favourite_states.dart';
import 'package:book/Features/home/presentation/views_model/views/side_bar_view.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/presentation/views_model/views/widgets/itemDesign/custom_recommended_item.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCubit, FavouritesStates>(
      builder: (context, state) {
        var fCubit = BlocProvider.of<FavouriteCubit>(context)
          ..fetchFavouriteBooks();
        return Scaffold(
          drawer: const SideBarView(),
          body: Padding(
            padding:
                EdgeInsetsDirectional.only(top: 18.0.h, start: 16.w, end: 16.w),
            child: Column(
              children: [
                const CustomAppBar(
                  title: 'Favorites',
                  leadingIcon: null,
                ),
                //Text(fCubit.favouriteBooks.length.toString())
                fCubit.favouriteBooks.isNotEmpty
                    ? Expanded(
                        child: ListView.builder(
                          padding: EdgeInsetsDirectional.only(top: 18.h),
                          physics: const ClampingScrollPhysics(),
                          itemCount: fCubit.favouriteBooks.length,
                          itemBuilder: (context, index) =>
                              CustomRecommendedItem(
                            authorName: fCubit.favouriteBooks[index]
                                    ['volumeInfo']['authors']?[0] ??
                                '',
                            bookName: fCubit.favouriteBooks[index]['volumeInfo']
                                ['title'],
                            description: fCubit.favouriteBooks[index]
                                    ['volumeInfo']['description'] ??
                                fCubit.favouriteBooks[index]['volumeInfo']
                                    ['infoLink'],
                            bookImage: fCubit.favouriteBooks[index]
                                        ['volumeInfo']['imageLinks']
                                    ?['smallThumbnail'] ??
                                '',
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        );
      },
    );
  }
}
