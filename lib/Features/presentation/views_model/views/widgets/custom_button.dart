import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key, required this.icon, required this.text,}) : super(key: key);
  final IconData icon;
  final String text;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color color = Colors.white54;
  IconData? myIcon;
  String? myText;

  @override
  void initState() {
    super.initState();
    myIcon = widget.icon;
    myText = widget.text;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (color == Colors.white54) {
            color = Colors.black26;
          } else {
            color = Colors.white54;
          }
        });
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
}
