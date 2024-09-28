import 'package:cofee_shop/bloc/navigation_bloc.dart';
import 'package:cofee_shop/common/app-colors.dart';
import 'package:cofee_shop/common/app-font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;

  const BottomNavBar({super.key, required this.items, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      currentIndex: currentIndex,
      onTap: (index){
        context.read<NavigationBloc>().add(NavigateTo(index: index));
      },
      selectedItemColor: AppColors.mainBaseColor,
      unselectedItemColor: AppColors.greyColor300,
      selectedLabelStyle: mainBaseTextStyle.copyWith(fontWeight: bold700, fontSize: size14),
      unselectedLabelStyle: secondaryTextStyle.copyWith(fontWeight: bold500, fontSize: size14),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
      iconSize: 24,
    );
  }
}