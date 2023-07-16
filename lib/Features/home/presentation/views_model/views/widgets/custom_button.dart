import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key, required this.icon, required this.text, required this.navigationPlace,}) : super(key: key);
  final IconData icon;
  final String text;
  final String navigationPlace;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color color = const Color.fromRGBO(44, 44, 45, 1);
  IconData? myIcon;
  String? myText;
  String? navigationPlace;

  @override
  void initState() {
    super.initState();
    myIcon = widget.icon;
    myText = widget.text;
    navigationPlace = widget.navigationPlace;
  }
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (color == Colors.white54) {
                color = const Color.fromRGBO(44, 44, 45, 1);
              }
              else {
                color = Colors.white54;
              }
            });
            Navigator.of(context).pop();
            Navigator.pushNamed(context, navigationPlace!);
            //Scaffold.of(context).closeDrawer();
          },
          child: Padding(
            padding: EdgeInsetsDirectional.only(end: 5.0.w),
            child: Container(
              width: double.infinity,
              height: 66.h,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsetsDirectional.only(top:8.h),
              child: ListTile(
                leading: Icon(
                  myIcon,
                  size: 50.sp,
                  color: Colors.white,
                ),
                title: Text(
                  myText??'',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
