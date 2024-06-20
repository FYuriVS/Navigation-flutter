import 'package:flutter/material.dart';
import 'package:navegacao/core/app_base.dart';
import 'package:navegacao/features/shop/pages/cart_page.dart';
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
          '/': (BuildContext context) => ProductsPage(),
          '/product': (BuildContext context) {
            final args = ModalRoute.of(context)!.settings.arguments;
            if (args is Map<String, String>) {
              final product = args['product'];
              return ProductPage(product: product!);
            } else {
              return const ProductPage(product: "Produto não existente");
            }
          },
        },
        navigatorKey: NavigatorKeys.navigatorKeyProducts,
      ),
      TabItemWidget(
        routes: {
          '/': (BuildContext context) => const CartPage(),
        },
        navigatorKey: NavigatorKeys.navigatorKeyCart,
      ),
      TabItemWidget(
        routes: {
          '/': (BuildContext context) => const CartPage(),
        },
        navigatorKey: NavigatorKeys.navigatorKeyFavorite,
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
