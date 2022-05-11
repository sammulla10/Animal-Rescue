import 'package:animal_rescue/models/product_model.dart';
import 'package:animal_rescue/pages/product_detail.dart';
import 'package:animal_rescue/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

// class ProductList extends StatelessWidget {
//   const ProductList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: ProductModel.items.length,
//       itemBuilder: (context, index) {
//         final product = ProductModel.items[index];
//         return InkWell(
//             onTap: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => ProductDetailPage(product: product))),
//             child: ProductItem(product: product));
//       },
//     );
//   }
// }

class ProductItem extends StatelessWidget {
  final Item product;
  final Function() onaddtocart;
  const ProductItem({
    required this.onaddtocart,
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(product.id.toString()),
          child: ProductImage(
            img: product.img,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            product.name.text.lg
                .color(Color.fromARGB(255, 2, 82, 162))
                .bold
                .make(),
            product.descript.text.make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.mH8,
              children: [
                "\₹${product.price}".text.bold.xl.make(),
                ElevatedButton(
                    onPressed:  onaddtocart,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue[800])),
                    child: "Add to cart".text.white.make())
              ],
            )
          ],
        ))
      ],
    )).white.roundedSM.square(150).make().py8();
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key, required this.img}) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Image.asset(img)
        .box
        .rounded
        .p8
        .color(MyTheme.creamcolor)
        .make()
        .p16()
        .w40(context);
  }
}
