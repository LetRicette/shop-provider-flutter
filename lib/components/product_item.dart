import 'package:flutter/material.dart';
import 'package:shop/models/product_model.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
              )),
        ),
      ),
    );
  }
}