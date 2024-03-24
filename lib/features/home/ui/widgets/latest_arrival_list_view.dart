import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/features/home/ui/widgets/lastest_arrival_item.dart';

class LastArrivalListView extends StatelessWidget {
  const LastArrivalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  MediaQuery.of(context).size.height * 0.2.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        separatorBuilder: (context, index) => horizontalSpace(10),
        itemBuilder: (context, index) => const LastArrivalItem(),
      ),
    );
  }
}
