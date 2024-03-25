import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/extensions.dart';
import 'package:smart_app/core/routing/routes.dart';
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
          title: 'All Orders',
          onTap: (){},
        ),
        CustomListTiles(
          imageUrl: Assets.bagWishlistSvg,
          title: 'Wishlist',
          onTap: ()
          {
            context.pushNamed(Routes.wishlist);
          },
        ),
        CustomListTiles(
          imageUrl: Assets.profileRecent,
          title: 'Viewed recently',
          onTap: ()
          {
            context.pushNamed(Routes.viewedRecently);
          },
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
