import 'package:book/Features/favourite/presentation/manager/favourite_cubit.dart';
import 'package:book/Features/favourite/presentation/manager/favourite_states.dart';
import 'package:book/Features/home/presentation/views_model/views/side_bar_view.dart';
import 'package:book/Features/home/presentation/views_model/views/widgets/custom_app_bar.dart';
import 'package:book/core/utils/widgets/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);
  static String id = 'Settings View';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=> FavouriteCubit(),
      child: BlocBuilder<FavouriteCubit, FavouritesStates>(
        builder: (BuildContext context, FavouritesStates state) {
          var fCubit = BlocProvider.of<FavouriteCubit>(context);
          return Scaffold(
            drawer: const SideBarView(),
            body: Padding(
              padding:
              EdgeInsetsDirectional.only(top: 18.0.h, start: 16.w, end: 16.w),
              child: Column(
                children: [
                  const CustomAppBar(
                    title: 'Settings',
                    leadingIcon: null,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      fCubit.deleteFavourites();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: CustomSnackBar(),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width - 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                        child: Row(
                          children: [
                            Text(
                              'Delete the favourites',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.delete,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    )
      ;
  }
}
