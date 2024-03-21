
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/core/logic/app_cubit.dart';
import 'package:smart_app/core/logic/app_states.dart';
import 'package:smart_app/core/widgets/app_text.dart';
import 'package:smart_app/generated/assets.dart';

class SettingSection extends StatelessWidget {
  const SettingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: 'Settings',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            verticalSpace(7),
            SwitchListTile(
              secondary: Image.asset(Assets.profileTheme, height: 30.h,),
              value: cubit.getIsDarkMode,
              onChanged: (value) {
                cubit.setDarkMode(themeValue: value);
              },
              title: Text(cubit.getIsDarkMode ? 'Dark Mode' : 'Light Mode'),),
          ],
        );
      },
    );
  }
}
