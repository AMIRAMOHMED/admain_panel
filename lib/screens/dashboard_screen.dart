import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/dashboard_btn_models.dart';
import '../providers/them_provider.dart';
import '../services/assets_manger.dart';
import '../widgets/dashboard_btn.dart';
import '../widgets/title_text.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/DashboardScreen';
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const TitlesTextWidget(label: "Dashboard Screen"),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
        actions: [
          IconButton(
            onPressed: () {
              themeProvider.setDarkTheme(
                  themeValue: !themeProvider.getIsDarkTheme);
            },
            icon: Icon(themeProvider.getIsDarkTheme
                ? Icons.light_mode
                : Icons.dark_mode),
          ),
        ],
      ),
      body: GridView.count(crossAxisCount: 2,children:
        List.generate(3, (index) =>  Padding(
          padding:const EdgeInsets.all(8.0),
          child: DashboardButton(fun: DashboardBottomModels.dashboradBtnList(context)[index].fun,
              imagePath: DashboardBottomModels.dashboradBtnList(context)[index].imagePath,
              title:DashboardBottomModels.dashboradBtnList(context)[index].title),
        )))
      );

  }
}
