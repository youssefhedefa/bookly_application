import 'package:book/Features/home/presentation/views_model/views/widgets/custom_text_field.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/itemDesign/custom_recommended_item.dart';
import 'package:book/Features/search/presentation/manager/search_cubit.dart';
import 'package:book/Features/search/presentation/manager/search_states.dart';
import 'package:book/core/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocBuilder<SearchCubit,SearchStates>(
        builder: (context,state)
        {
          var searchCubit = BlocProvider.of<SearchCubit>(context);
          return Padding(
            padding: EdgeInsetsDirectional.only(top: 58.0.h, start: 16.w, end: 16.w),
            child: Column(
              children: [
                CustomTextField(
                  enabled: true,
                  onChanged: (value)
                  {
                    searchCubit.getSearchedBooks(value);
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsetsDirectional.only(top: 18.h),
                    physics: const ClampingScrollPhysics(),
                    itemCount: searchCubit.searchedBooks.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: ()
                      {
                        Navigator.pushNamed(context,MyRoutes.kBookDetails , arguments: searchCubit.searchedBooks[index]);
                      },
                      child: CustomRecommendedItem(
                        authorName: searchCubit.searchedBooks[index]['volumeInfo']['authors']?[0] ?? '',
                        bookName: searchCubit.searchedBooks[index]['volumeInfo']['title'],
                        description: searchCubit.searchedBooks[index]['volumeInfo']['description'] ?? searchCubit.searchedBooks[index]['volumeInfo']['infoLink'],
                        bookImage: searchCubit.searchedBooks[index]['volumeInfo']['imageLinks']?['smallThumbnail'] ?? '',
                      ),
                    ),
                  ),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
