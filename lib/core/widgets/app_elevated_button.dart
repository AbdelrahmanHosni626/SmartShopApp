import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/widgets/app_text.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? padding;

  const AppElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.padding,
      });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20.h),
      ),
      onPressed: onPressed,
      child: AppText(
        text: text,
      ),
    );
  }
}
