import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/widgets/app_text.dart';
import 'package:smart_app/features/profile/ui/widgets/custom_list_tiles.dart';
import 'package:smart_app/generated/assets.dart';

class GeneralSection extends StatelessWidget {
  const GeneralSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: 'General',
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        CustomListTiles(
          imageUrl: Assets.bagOrderSvg,
          title: 'Address',
          onTap: (){},
        ),
        CustomListTiles(
          imageUrl: Assets.bagWishlistSvg,
          title: 'Wishlist',
          onTap: (){},
        ),
        CustomListTiles(
          imageUrl: Assets.profileRecent,
          title: 'Viewed recently',
          onTap: (){},
        ),
        CustomListTiles(
          imageUrl: Assets.profileAddress,
          title: 'Address',
          onTap: (){},
        ),
      ]
    );
  }
}
