import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final String product;
  const ProductPage({super.key, required this.product});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text(widget.product)],
      ),
    );
  }
}
