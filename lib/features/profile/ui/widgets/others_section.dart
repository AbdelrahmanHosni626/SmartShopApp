import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/core/widgets/app_text.dart';
import 'package:smart_app/features/profile/ui/widgets/custom_list_tiles.dart';
import 'package:smart_app/generated/assets.dart';

class OthersSection extends StatelessWidget {
  const OthersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: 'Others',
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        verticalSpace(7),
        CustomListTiles(
          imageUrl: Assets.profilePrivacy,
          title: 'Privacy & Policy',
          onTap: () {},
        ),
        verticalSpace(20),
        Align(
          alignment: Alignment.center,
          child: ElevatedButton.icon(
            icon: const Icon(IconlyLight.logout, color: Colors.white),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            onPressed: () {},
            label: const AppText(
              text: 'Logout',
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
