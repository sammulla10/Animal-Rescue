import 'package:flutter/material.dart';

import 'package:animal_rescue/models/product_model.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetailPage extends StatelessWidget {
  final Item product;
  const ProductDetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: Vx.mH8,
            children: [
              "\₹${product.price}".text.bold.xl4.make(),
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[800])),
                      child: "Add to cart".text.bold.white.make())
                  .wh(120, 50),
            ],
          ).p32(),
        ),
        body: Column(
          children: [
            Hero(
                    tag: Key(product.id.toString()),
                    child: Image.asset(product.img))
                .h32(context),
            Expanded(
                child: Container(
              width: context.screenWidth,
              color: Colors.white,
              child: Column(
                children: [
                  product.name.text.xl4
                      .color(Color.fromARGB(255, 2, 82, 162))
                      .bold
                      .make(),
                  product.descript.text.xl2.make(),
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptaExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                      .text
                      .make()
                      .p16()
                ],
              ).py20(),
            ))
          ],
        ),
      ),
    );
  }
}
