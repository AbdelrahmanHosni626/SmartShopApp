import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/extensions.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/core/routing/routes.dart';
import 'package:smart_app/core/widgets/app_text.dart';
import 'package:smart_app/generated/assets.dart';

class AllOrdersListViewItem extends StatelessWidget {
  const AllOrdersListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        context.pushNamed(Routes.productDetails);
      },
      child: FittedBox(
        child: IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: FancyShimmerImage(
                    imageUrl:
                    Assets.testImage,
                    height: size.height * 0.2.h,
                    width: size.width * 0.3.w,
                  ),
                ),
                horizontalSpace(10),
                IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.5,
                            child: const AppText(
                              text:
                              'Apple iPhone 14 Pro (128GB) - Black',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconlyLight.closeSquare,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(20),
                      const AppText(text: 'Price: \$1999.99'),
                      const AppText(text: 'Qty: 1'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
