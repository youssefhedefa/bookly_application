import 'package:book/Features/home/presentation/views_model/views/side_bar_view.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/detailsViewSections/app_bar.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/detailsViewSections/book_cover.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/detailsViewSections/description.dart';
import 'package:flutter/material.dart';
import 'widgets/detailsViewSections/detail_book_button.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({
    Key? key, required this.book,
  }) : super(key: key);

  final Map<String,dynamic> book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBarView(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Stack(
            children: [
              DetailViewBookCoverContainer(
                bookImage: book['volumeInfo']['imageLinks']?['smallThumbnail'] ?? '',
              ),
              const DetailViewAppBar(),
            ],
          ),
          CustomDetailBookButton(
              id: book['id'],
            category: book['volumeInfo']['categories'][0],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 28,
          ),
          DescriptionPart(des: book['volumeInfo']['description'] ?? book['volumeInfo']['infoLink'],
          ),
        ],
      ),
    );
  }
}