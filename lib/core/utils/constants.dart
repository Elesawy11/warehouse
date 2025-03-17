import '../../core/utils/assets.dart';
import 'app_navigation_bar_items.dart';

class Constants {
  Constants._();

  static List<NavigationBarItemsImagesModel> appNavigationBarItems = [
    NavigationBarItemsImagesModel(
      imageIcon: Assets.svg_imageHome,
      activeImageIcon: Assets.svg_imageActiveHome,
      label: 'Home',
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.svg_imageItems,
      activeImageIcon: Assets.svg_imageActiveItems,
      label: 'Items',
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.svg_imageTransaction,
      activeImageIcon: Assets.svg_imageActiveTransactions,
      label: 'Transactions',
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.svg_imageSettings,
      activeImageIcon: Assets.svg_imageActiveSettings,
      label: 'Settings',
    ),
  ];
}
