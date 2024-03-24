import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/extensions.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/core/routing/routes.dart';
import 'package:smart_app/core/widgets/app_heart_icon.dart';
import 'package:smart_app/core/widgets/app_text.dart';
import 'package:smart_app/generated/assets.dart';

class LastArrivalItem extends StatelessWidget {
  const LastArrivalItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ()
      {
        context.pushNamed(Routes.productDetails);
      },
      child: SizedBox(
        width:  size.width * 0.5.w,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
              child: FancyShimmerImage(
                width: size.width * 0.2.w,
                height: size.height * 0.18.h,
                imageUrl: Assets.testImage,
              ),
            ),
            horizontalSpace(10),
            Flexible(
              child: Column(
                children: [
                  AppText(
                    text: 'text' * 10,
                    fontSize: 18.sp,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_shopping_cart_rounded),
                        ),
                        const AppHeartIconButton(bgColor: Colors.transparent,),
                      ],
                    ),
                  ),
                  const AppText(
                    text: '\$1234.00',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
