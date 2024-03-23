import 'package:flutter/material.dart';
import 'package:smart_app/features/profile/ui/widgets/app_bar_title.dart';
import 'package:smart_app/generated/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double fontSize;
  const CustomAppBar({super.key, required this.title, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset(Assets.bagShoppingCart),
      title: AppBarTitle(
        title: title,
        fontSize: fontSize,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
