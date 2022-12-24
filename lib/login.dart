import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:login/state_management/state.dart';
import 'package:login/widget/Button.dart';
import 'package:login/widget/Rich_Text.dart';
import 'package:login/widget/Text_Field.dart';
import 'package:login/widget/colorConst.dart';
import 'package:login/widget/txtStyleConst.dart';

import 'state_management/cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginStates>(
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Login Text
                  Text('LOGIN', style: title.copyWith(fontSize: 30)),

                  const SizedBox(height: 25),
                  // Email
                  TextFieldWidget(
                    hintText: 'Enter Your Email Address',
                    prefixIcon: const Icon(IconlyBroken.message),
                  ),

                  const SizedBox(height: 10),
                  // Password
                  TextFieldWidget(
                    hintText: 'Enter Your Password',
                    prefixIcon: const Icon(IconlyBroken.password),
                    passSecurity: LoginCubit.get(context).isPassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        LoginCubit.get(context).changePasswordVisibility();
                      },
                      icon: Icon(LoginCubit.get(context).suffix),
                    ),
                  ),

                  const SizedBox(height: 20),
                  // Button Login
                  ButtonWidget(
                    text: 'Login',
                    txtColor: Colors.white,
                    bgColor: deepOrange,
                    width: double.infinity,
                  ),

                  const SizedBox(height: 12),
                  // Forgot Password
                  Center(
                    child: RichTextButton(
                      firstText: 'Dont have account? ',
                      colorFirstText: Colors.grey,
                      secondText: 'REGISTER',
                      colorSecondText: Colors.blue,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
