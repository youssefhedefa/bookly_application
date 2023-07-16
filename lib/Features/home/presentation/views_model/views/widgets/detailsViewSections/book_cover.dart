import 'package:flutter/material.dart';

import '../../../../../../../core/utils/assets.dart';


class DetailViewBookCoverContainer extends StatelessWidget {
  const DetailViewBookCoverContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2.1,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(67, 67, 67, 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 38.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.48,
            child: const AspectRatio(
              aspectRatio: 1 / 1.25,
              child:  Image(
                image: AssetImage(
                  AssetsData.testCoverImage,
                ),
                //fit: BoxFit.fill,
              ),
            ),
          ),
        )
      ],
    );
  }
}
