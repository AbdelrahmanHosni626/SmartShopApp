import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_app/core/helpers/form_validators.dart';
import 'package:smart_app/core/helpers/spacing.dart';
import 'package:smart_app/core/widgets/app_elevated_button.dart';
import 'package:smart_app/core/widgets/app_text_form_field.dart';
import 'package:smart_app/features/login/logic/login_cubit.dart';
import 'package:smart_app/features/login/logic/login_states.dart';

class LoginForm extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = LoginCubit.get(context);
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children:
          [
            AppTextFormField(
              controller: emailController,
              obscureText: false,
              hint: 'youremail@email.com',
              prefix: IconlyLight.message,
              validator: (value) {
                return FormValidators.emailValidator(value);
              },
              onFieldSubmitted: (value) {
                if (cubit.formKey.currentState!.validate()) {}
              },
            ),
            verticalSpace(10),
            AppTextFormField(
              controller: passwordController,
              obscureText: cubit.isPassword,
              hint: '*************',
              prefix: IconlyLight.password,
              validator: (value) {
                return FormValidators.passwordValidator(value);
              },
              suffix: cubit.isPassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              suffixPressed: () {
                cubit.changePasswordVisibility();
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        decoration: TextDecoration.underline),
                  )),
            ),
            SizedBox(
              width: double.infinity,
              child: AppElevatedButton(
                padding: EdgeInsets.all(1.r),
                onPressed: () {},
                text: 'Sign in',
              ),
            ),
          ],
        );
      }
    );
  }
}
