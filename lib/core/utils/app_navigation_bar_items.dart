import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<BottomNavigationBarItem> appNavigationBarItems(
    {required List<NavigationBarItemsImagesModel> list}) {
  return List.generate(
    list.length,
    (index) => bootmNavigationBarItem(
      icon: SvgPicture.asset(
        list[index].imageIcon,
        width: 24.r,
        height: 24.r,
      ),
      label: list[index].label,
      activeIcon: SvgPicture.asset(
        list[index].activeImageIcon,
        width: 24.r,
        height: 24.r,
      ),
    ),
  );
}

BottomNavigationBarItem bootmNavigationBarItem({
  required Widget icon,
  required String label,
  required Widget activeIcon,
}) {
  return BottomNavigationBarItem(
    icon: icon,
    label: label,
    activeIcon: activeIcon,
  );
}

class NavigationBarItemsImagesModel {
  final String imageIcon;
  final String activeImageIcon;
  final String label;

  NavigationBarItemsImagesModel({
    required this.label,
    required this.imageIcon,
    required this.activeImageIcon,
  });
}
