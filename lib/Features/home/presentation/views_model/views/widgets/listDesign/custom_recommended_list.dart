import 'package:book/Features/home/presentation/manager/homeCubit/home_cubit.dart';
import 'package:book/Features/home/presentation/manager/homeCubit/home_state.dart';
import 'package:book/core/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../itemDesign/custom_recommended_item.dart';

class CustomRecommendedList extends StatelessWidget {
  const CustomRecommendedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeStates>(
      builder: (BuildContext context, state) {
        var homeCubit = BlocProvider.of<HomeCubit>(context);
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsetsDirectional.zero,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.kBookDetails);
            },
            child: CustomRecommendedItem(
              authorName: homeCubit.recommendedBooks[index]['volumeInfo']['authors']?[0] ?? '',
              bookName: homeCubit.recommendedBooks[index]['volumeInfo']['title'],
              description: homeCubit.recommendedBooks[index]['volumeInfo']['description'] ?? homeCubit.recommendedBooks[index]['volumeInfo']['infoLink'],
              bookImage: homeCubit.recommendedBooks[index]['volumeInfo']['imageLinks']?['smallThumbnail'] ?? '',
            ),
          ),
          itemCount: homeCubit.recommendedBooks.length,
          scrollDirection: Axis.vertical,
        );
      },
    );
  }
}
