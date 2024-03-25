import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/core/widgets/app_bar_leading.dart';
import 'package:smart_app/core/widgets/app_text.dart';
import 'package:smart_app/features/profile/ui/widgets/app_bar_title.dart';
import 'package:smart_app/generated/assets.dart';

import '../../../core/widgets/app_heart_icon.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeading(),
        title: const AppBarTitle(title: 'SmartShop', fontSize: 25),
        centerTitle: true,
        actions: [
          Badge(
            label: const Text('10'),
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15.r)),
                child: FancyShimmerImage(
                  imageUrl: Assets.testImage,
                  width: double.infinity,
                  boxFit: BoxFit.fill,
                ),
              ),
              verticalSpace(20),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: AppText(
                      text: 'Apple iPhone 14 Pro (128GB) - Black',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AppText(
                    text: '\$1999.00',
                    color: Colors.blue,
                  ),
                ],
              ),
              verticalSpace(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    const AppHeartIconButton(),
                    horizontalSpace(20),
                    Expanded(
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.add_shopping_cart_rounded),
                        onPressed: () {},
                        label: const AppText(
                          text: 'Added To Card',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(20),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: AppText(
                      text: 'About This Item',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
                  AppText(
                    text: 'in Phones',
                    color: Colors.blue,
                  ),
                ],
              ),
              verticalSpace(20),
              AppText(text: 'Description ' *20),
            ],
          ),
        ),
      ),
    );
  }
}
