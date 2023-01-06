import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static const routeName = "/product-detail";

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute
        .of(context)
        ?.settings
        .arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('appbarTitle'),
      ),
      body: Container(),
    );
  }
}
