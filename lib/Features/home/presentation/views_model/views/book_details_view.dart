import 'package:book/Features/home/presentation/views_model/views/side_bar_view.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/detailsViewSections/app_bar.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/detailsViewSections/book_cover.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/detailsViewSections/description.dart';
import 'package:flutter/material.dart';
import 'widgets/detailsViewSections/detail_book_button.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({
    Key? key,
  }) : super(key: key);
  static String id = 'Book Details View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const SideBarView(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child:  Stack(
              children: [
                DetailViewBookCoverContainer(),
                DetailViewAppBar(),
              ],
            ),
          ),
          const Expanded(child:  CustomDetailBookButton()),
          SizedBox(
            height: MediaQuery.of(context).size.height / 28,
          ),
          const Expanded(child:  DescriptionPart()),
        ],
      ),
    );
  }
}
