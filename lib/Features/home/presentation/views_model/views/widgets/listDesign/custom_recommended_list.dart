import 'package:flutter/material.dart';
import '../../book_details_view.dart';
import '../itemDesign/custom_recommended_item.dart';

class CustomRecommendedList extends StatelessWidget {
  const CustomRecommendedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsetsDirectional.zero,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, BookDetailsView.id);
        },
        child: CustomRecommendedItem(
          authorName: 'Author $index',
          bookName: 'Book $index',
          description: 'Description $index',
        ),
      ),
      itemCount: 20,
      scrollDirection: Axis.vertical,
    );
  }
}
