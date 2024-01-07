import 'package:admain_panel/services/assets_manger.dart';
import 'package:flutter/cupertino.dart';

import '../screens/inner_Screen/edit_uploaded_product_screen.dart';
import '../screens/inner_Screen/order/orders_screen.dart';
import '../screens/inner_Screen/search_screen.dart';

class DashboardBottomModels {
  final String title, imagePath;
  final Function fun;

  DashboardBottomModels(
      {required this.title, required this.imagePath, required this.fun});

  static List<DashboardBottomModels> dashboradBtnList(BuildContext context) => [
        DashboardBottomModels(
            title: "Add a new product",
            imagePath: AssetsManager.cloud,
            fun: () {Navigator.pushNamed(context,EditOrUploadProductScreen.routeName);}),
        DashboardBottomModels(
            title: "inspect all products ",
            imagePath: AssetsManager.shoppingCart,
            fun: () {
              Navigator.pushNamed(context, SearchScreen.routeName);
            }),
        DashboardBottomModels(
            title: 'view orders ', imagePath: AssetsManager.order, fun: () {Navigator.pushNamed(context,OrdersScreenFree.routeName);}),
      ];
}
