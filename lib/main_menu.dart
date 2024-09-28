import 'package:cofee_shop/bloc/navigation_bloc.dart';
import 'package:cofee_shop/common/app-colors.dart';
import 'package:cofee_shop/common/app-font.dart';
import 'package:cofee_shop/common/app-icons.dart';
import 'package:cofee_shop/pages/home_page.dart';
import 'package:cofee_shop/pages/page_2.dart';
import 'package:cofee_shop/pages/page_3.dart';
import 'package:cofee_shop/pages/page_4.dart';
import 'package:cofee_shop/widget/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainMenu extends StatelessWidget {
  MainMenu({super.key});

  final List<Widget> pages = [
    const HomePage(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  BottomNavigationBarItem createBottomNavItem({
    required String assetName,
    required bool isActive,
    required BuildContext context,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        margin: const EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: 24,
        child: SvgPicture.asset(
          assetName,
          height: 24,
          color: AppColors.greyColor200,
        ),
      ),
      activeIcon: Container(
        margin: const EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: 24,
        child: SvgPicture.asset(
          assetName,
          height: 24,
          color: AppColors.mainBaseColor,
        ),
      ),
      label: '',
      tooltip: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          if (state is NavigationChanged) {
            return pages[state.index];
          }
          return pages[0];
        },
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          int currentIndex = 0;
          if (state is NavigationChanged) {
            currentIndex = state.index;
          }

          final List<BottomNavigationBarItem> bottomNavItems = [
            createBottomNavItem(
              assetName: AppIcons.homeActive,
              isActive: currentIndex == 0,
              context: context,
            ),
            createBottomNavItem(
              assetName: AppIcons.heart,
              isActive: currentIndex == 1,
              context: context,
            ),
            createBottomNavItem(
              assetName: AppIcons.norification,
              isActive: currentIndex == 2,
              context: context,
            ),
            createBottomNavItem(
              assetName: AppIcons.account,
              isActive: currentIndex == 3,
              context: context,
            ),
          ];

          return BottomNavBar(
            items: bottomNavItems,
            currentIndex: currentIndex,
          );
        },
      ),
    );
  }
}
