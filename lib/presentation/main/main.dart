import 'package:flower_app/presentation/resources/assets_manager.dart';
import 'package:flower_app/presentation/resources/color_manager.dart';
import 'package:flower_app/presentation/resources/strings_manager.dart';
import 'package:flower_app/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      AppStrings.accountName,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    accountEmail: Text(
                      AppStrings.accountEmail,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    currentAccountPicture: CircleAvatar(
                      child: SvgPicture.asset(
                        ImageAssets.userImg,
                        fit: BoxFit.cover,
                      ),
                      backgroundColor: ColorManager.white,
                    ),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageAssets.drawerBackground),
                          repeat: ImageRepeat.repeat),
                    ),

                    //     otherAccountsPictures: [FaIcon(FontAwesomeIcons.accusoft),
                    // FaIcon(FontAwesomeIcons.accusoft),
                    // FaIcon(FontAwesomeIcons.accusoft),],
                  ),
                  ListTile(
                    title: Text(
                      AppStrings.home,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    leading: const Icon(Icons.home),
                  ),
                  ListTile(
                    title: Text(
                      AppStrings.myProducts,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    leading: const Icon(Icons.add_shopping_cart),
                  ),
                  ListTile(
                    title: Text(
                      AppStrings.about,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    leading: const Icon(Icons.help_center),
                  ),
                  ListTile(
                    title: Text(
                      AppStrings.logout,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    leading: const Icon(Icons.logout),
                  ),
                ],
              ),
              Container(
                child: Text(
                  AppStrings.developerInfo,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                margin: const EdgeInsets.only(bottom: AppMargin.m8),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(AppStrings.home),
          actions: [
            Row(
              children: [
                Stack(children: [
                  Container(
                    child: Text(
                      AppStrings.numberOfPurchases,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    padding: const EdgeInsets.all(AppPadding.p2),
                    // decoration: const BoxDecoration(
                    //   color: ColorManager.white,
                    //   shape: BoxShape.circle
                    // ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_shopping_cart)),
                ]),
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppPadding.p8, left: AppPadding.p8),
                  child: Text(
                    AppStrings.price,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ],
        ),
        body: GridView.builder(
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: AppSize.s2, // number of products on line "Cross"
                    childAspectRatio: AppSize.s3 / AppSize.s2,
                    crossAxisSpacing: AppSize.s10,
                    mainAxisSpacing: AppSize.s30,
                     ),
            itemCount: 8,
            itemBuilder: (BuildContext context,int index){
              return ClipRRect(
                borderRadius: BorderRadius.circular(AppBorder.b50),
                child: GridTile(
                  child: Image.asset(ImageAssets.product1),
                ),
              );
            },
        ),
      ),
    );
  }
}
