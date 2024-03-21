import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_app/core/logic/app_cubit.dart';
import 'package:smart_app/core/logic/app_states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Home Screen',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Hello World')),
            SwitchListTile(
                value: cubit.getIsDarkMode,
                onChanged: (value) {
                  cubit.setDarkMode(themeValue: value);
                },
                title: Text(cubit.getIsDarkMode ? 'Dark Mode' : 'Light Mode')),
          ]),
        );
      },
    );
  }
}
