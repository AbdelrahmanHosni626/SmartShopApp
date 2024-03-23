import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/core/widgets/app_text.dart';
import 'package:smart_app/features/cart/ui/widgets/quantity_bottom_sheet.dart';
import 'package:smart_app/generated/assets.dart';

class ShoppingBasketListViewItem extends StatelessWidget {
  const ShoppingBasketListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
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
                          width: size.width * 0.6,
                          child: const AppText(
                            text:
                                'Nike Air Nike Air Nike Air Nike Air Nike Air Nike Air Nike Air Nike Air Nike Air Nike Air Nike Air Nike Air Nike Air Nike Air ',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                IconlyLight.heart,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const AppText(text: '\$50.00'),
                        const Spacer(),
                        OutlinedButton.icon(
                          onPressed: () async {
                            await showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return const QuantityBottomSheet();
                              },
                            );
                          },
                          icon: const Icon(IconlyLight.arrowDown2),
                          label: const Text('Qty: 6'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
