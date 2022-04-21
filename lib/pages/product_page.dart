import 'package:animal_rescue/utils/routes.dart';
import 'package:animal_rescue/widgets/product_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:animal_rescue/models/product_model.dart';
import 'package:animal_rescue/widgets/item_widget.dart';
import 'package:animal_rescue/widgets/themes.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(16),
            child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.cartRoute);
                },
                child: Icon(
                  CupertinoIcons.cart_fill,
                )),
          ),
        ],
        // automaticallyImplyLeading: false,
        title: Text('Products',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        toolbarHeight: 70,
        backgroundColor: Colors.blue[600],
        elevation: 2,
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (ProductModel.items != null && ProductModel.items.isNotEmpty)
                ProductList().expand()
              else
                Center(
                  child: CircularProgressIndicator().expand(),
                )
            ],
          ),
        ),
      ),
    );
  }
}
