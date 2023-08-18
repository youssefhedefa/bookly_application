import 'package:book/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/views_model/views/side_bar_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SearchViewBody(),
    );
  }
}
