import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Container(
        height: 28,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
        child: const Text(
          'The favourites have been deleted',
          style: TextStyle(
            fontSize: 16,
          ),
        ),


    );

  }
}
