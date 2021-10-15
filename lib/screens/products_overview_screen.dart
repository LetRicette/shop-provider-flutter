import 'package:flutter/material.dart';
import 'package:shop/components/product_grid.dart';

class ProductsOverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Minha Loja',
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ProductWidget(),
        ),
      ),
    );
  }
}
