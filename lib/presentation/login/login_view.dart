import 'package:flower_app/presentation/resources/color_manager.dart';
import 'package:flower_app/presentation/resources/strings_manager.dart';
import 'package:flower_app/presentation/resources/styles_manager.dart';
import 'package:flower_app/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

import '../resources/routes_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(AppPadding.p20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            getTextField(
                hintText: AppStrings.enterYourEmailAddress,
                textInputType: TextInputType.emailAddress),
            const SizedBox(height: AppSize.s20),
            getTextField(
                hintText: AppStrings.enterYourPassword, obscureText: true),
            const SizedBox(height: AppSize.s20),
            getButton(() {}, AppStrings.login),
            const SizedBox(height: AppSize.s20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.dontHaveAnAcount,
                    style: Theme.of(context).textTheme.displayMedium
                  ),
                  getTextButton(() {
                    Navigator.pushReplacementNamed(context, Routes.registerRoute);
                  }, AppStrings.signUp)
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
