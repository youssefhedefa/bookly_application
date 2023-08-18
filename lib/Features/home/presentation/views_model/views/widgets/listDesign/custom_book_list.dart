import 'package:book/Features/home/presentation/manager/homeCubit/home_cubit.dart';
import 'package:book/Features/home/presentation/manager/homeCubit/home_state.dart';
import 'package:book/core/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../itemDesign/custom_book_item.dart';

class CustomBooksList extends StatelessWidget {
  const CustomBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeStates>(
      builder: (context, state) {
        var homeCubit = BlocProvider.of<HomeCubit>(context);
        return SizedBox(
          height: 250.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index)
            {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context,
                      MyRoutes.kBookDetails,
                    arguments: homeCubit.newestBooks[index],
                  );
                },
                child: CustomBookItem(
                  bookName: homeCubit.newestBooks[index]['volumeInfo']['title'],
                  bookAuthor: homeCubit.newestBooks[index]['volumeInfo']['authors']?[0] ?? '',
                  bookImage: homeCubit.newestBooks[index]['volumeInfo']['imageLinks']?['smallThumbnail'] ?? '',
                ),
              );
            },
            itemCount: homeCubit.newestBooks.length,
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}
