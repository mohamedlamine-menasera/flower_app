import 'package:flower_app/presentation/resources/strings_manager.dart';
import 'package:flower_app/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';

import '../resources/routes_manager.dart';
import '../resources/value_manager.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea
      (child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p20),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getTextField(hintText: AppStrings.enterYourUsername),
              const SizedBox(height: AppSize.s20),
              getTextField(hintText: AppStrings.enterYourEmailAddress),
              const SizedBox(height: AppSize.s20),
              getTextField(hintText: AppStrings.enterYourPassword),
              const SizedBox(height: AppSize.s20),
              getButton(() { }, AppStrings.register),
              const SizedBox(height: AppSize.s20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppStrings.AlreadyHaveAnAccount,style: Theme.of(context).textTheme.displayMedium),
                  getTextButton(() {
                    Navigator.pushReplacementNamed(context, Routes.loginRoute);
                  }, AppStrings.signIn)
                ],
              )
            ]),
      ),
    ));
  }
}
