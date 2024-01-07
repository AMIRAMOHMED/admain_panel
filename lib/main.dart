import 'package:admain_panel/providers/product_provider.dart';
import 'package:admain_panel/providers/them_provider.dart';
import 'package:admain_panel/screens/dashboard_screen.dart';
import 'package:admain_panel/screens/inner_Screen/edit_uploaded_product_screen.dart';
import 'package:admain_panel/screens/inner_Screen/order/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'consts/theme.dart';
import 'screens/inner_Screen/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(builder: (
          context,
          themeProvider,
          child,
          ) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shop Smart ADMIN AR',
          theme: Styles.themeData(
              isDarkTheme: themeProvider.getIsDarkTheme, context: context),
          home: const DashboardScreen(),
          routes: {
            OrdersScreenFree.routeName: (context) => const OrdersScreenFree(),
            SearchScreen.routeName: (context) => const SearchScreen(),
            EditOrUploadProductScreen.routeName:(context)=>const EditOrUploadProductScreen()
          },
        );
      }),
    );
  }
}
