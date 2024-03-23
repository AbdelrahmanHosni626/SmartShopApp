import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/core/widgets/app_text.dart';
import 'package:smart_app/generated/assets.dart';

class SearchGridViewBuilderItem extends StatelessWidget {
  const SearchGridViewBuilderItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: EdgeInsets.all(3.r),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30.r)),
              child: FancyShimmerImage(
                imageUrl: Assets.testImage,
                height: size.height * 0.25.h,
                width: double.infinity,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  flex: 3,
                  child: AppText(
                    text: 'Apple Iphone',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconlyLight.heart,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  flex: 3,
                  child: AppText(
                    text: '\$50000.00',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(10),
          ],
        ),
      ),
    );
  }
}