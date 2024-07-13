import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/cubit/login/login_cubit.dart';
import 'package:shopping/helpers/color_helper.dart';
import 'package:shopping/helpers/dimens_helper.dart';
import 'package:shopping/helpers/font_helper.dart';
import 'package:shopping/helpers/string_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorHelper.primaryColor,
        title: const Text(
          StringHelper.login,
          style: TextStyle(color: ColorHelper.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(DimensHelper.dimens_14),
        child: Column(
          children: [
            TextFormField(
              controller: email,
              decoration:
                  const InputDecoration(hintText: StringHelper.enterEmail),
            ),
            const SizedBox(height: FontHelper.font_18),
            TextFormField(
              controller: password,
              decoration:
                  const InputDecoration(hintText: StringHelper.enterPassword),
            ),
            const SizedBox(height: DimensHelper.dimens_30),
            SizedBox(
              height: DimensHelper.dimens_50,
              width: double.infinity,
              child: BlocProvider(
                create: (context) => LoginCubit(),
                child: BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        context.read<LoginCubit>().login(
                            email: email.text,
                            password: password.text,
                            context: context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorHelper.primaryColor),
                      child: state is LoginLoading
                          ? const CircularProgressIndicator(
                              color: ColorHelper.whiteColor)
                          : const Text(
                              StringHelper.login,
                              style: TextStyle(color: ColorHelper.whiteColor),
                            ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
