import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../book_details_view.dart';
import '../itemDesign/custom_book_item.dart';

class CustomBooksList extends StatelessWidget {
  const CustomBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, BookDetailsView.id);
          },
          child: CustomBookItem(
            bookName: 'Book Name $index',
            bookAuthor: 'Book Author $index',
          ),
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
