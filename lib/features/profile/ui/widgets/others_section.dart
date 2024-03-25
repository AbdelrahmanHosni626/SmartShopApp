import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/extensions.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/core/widgets/app_text.dart';
import 'package:smart_app/generated/assets.dart';

class OthersSection extends StatelessWidget {
  const OthersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton.icon(
        icon: const Icon(IconlyLight.login, color: Colors.white),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
        ),
        label: const AppText(
          text: 'Login',
          color: Colors.white,
        ),
        onPressed: () async{
          await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                actionsAlignment: MainAxisAlignment.center,
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                  [
                    Image.asset(Assets.imagesWarning, height: 100.h,),
                    verticalSpace(20),
                    const AppText(text: 'Are You Sure?'),
                  ],
                ),
                actions: [
                  TextButton(
                    child: const Text('Cancel', style: TextStyle(color: Colors.green),),
                    onPressed: ()
                    {
                      Navigator.canPop(context) ? context.pop() : null;
                    },
                  ),
                  TextButton(
                    child: const Text('OK', style: TextStyle(color: Colors.red),),
                    onPressed: (){},
                  ),

                ],
              );
            },
          );
        },
      ),
    );
  }
}
