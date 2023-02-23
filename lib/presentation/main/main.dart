import 'package:flower_app/presentation/resources/color_manager.dart';
import 'package:flower_app/presentation/resources/strings_manager.dart';
import 'package:flower_app/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.home),
          actions: [
            Row(
              children: [
                Stack(children: [
                  Container(
                      child:  Text(AppStrings.numberOfPurchases, style: Theme.of(context).textTheme.headlineMedium,),
                    padding: const EdgeInsets.all(AppPadding.p2),
                    // decoration: const BoxDecoration(
                    //   color: ColorManager.white,
                    //   shape: BoxShape.circle
                    // ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.bagShopping)),
                ]),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppPadding.p8, left: AppPadding.p8),
                  child: Text(
                    AppStrings.price,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
