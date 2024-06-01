import 'package:flutter/material.dart';

import '../../../core/navigator_keys.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: const Text('Produto tal'),
            onPressed: () {
              Navigator.pushNamed(
                NavigatorKeys.navigatorKeyProducts.currentContext!,
                '/product',
                arguments: {'name': 'Toshi Ossada'},
              );
            },
          ),
        ),
      ),
    );
  }
}
