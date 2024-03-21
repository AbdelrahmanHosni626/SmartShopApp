
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smart_app/core/widgets/app_text.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
    baseColor: Colors.purple,
    highlightColor: Colors.red,
    period: const Duration(seconds: 6),
    child: const AppText(text: 'SmartShop', fontSize: 30,),);
  }
}
