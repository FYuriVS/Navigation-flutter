import 'package:flutter/material.dart';
import 'package:navegacao/core/app_base.dart';
import 'package:navegacao/features/shop/pages/home_page.dart';
import 'package:navegacao/features/shop/pages/product_page.dart';
import 'package:navegacao/features/shop/pages/products_page.dart';

import '../shared/widgets/tab_item_widget.dart';
import 'navigator_keys.dart';


get tabs => [
  TabItemWidget(
    routes: {
      '/': (BuildContext context) => const HomePage(),
    },
    navigatorKey: NavigatorKeys.navigatorKeyHome,
  ),
  TabItemWidget(
    routes: {
      '/': (BuildContext context) => const ProductsPage(),
      '/product': (BuildContext context) {
        final args = ModalRoute.of(context)!.settings.arguments;
        if(args is Map<String, String>) {
          final name = args['name'];
          return ProductPage(name: name!);
        }
        else {
          return const ProductPage(name: "Produto não existente");
        }
      },
    },
    navigatorKey: NavigatorKeys.navigatorKeyProducts,
  ),
];

Map<String, WidgetBuilder> get routes => {
  '/': (context) => const AppBase(),

  // Caso queira ir para uma rota com contexto próprio...
  '/page4': (context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    if (args is Map<String, String>) {
      final name = args['name'];
      return Scaffold();
    }

    return const Scaffold();
  }
};