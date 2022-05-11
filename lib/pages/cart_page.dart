import 'package:animal_rescue/models/cart.dart';
import 'package:animal_rescue/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/product_model.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    List<Item> itemadded =
        ModalRoute.of(context)?.settings.arguments as List<Item>;
    num totalprice = 0;
    itemadded.forEach((element) {
      totalprice += element.price;
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyTheme.creamcolor,
        appBar: AppBar(
          backgroundColor: Colors.orange[100],
          title: "Cart".text.xl2.bold.make(),
        ),
        body: Column(
          children: [
            _CartList(
              itemgot: itemadded as List<Item>,
              onremove: () {
                setState(() {});
              },
            ).p32().expand(),
            Divider(),
            _CartTotal(
              totalprice: totalprice,
            ),
          ],
        ),
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  final num totalprice;
  const _CartTotal({Key? key, required this.totalprice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\₹${totalprice}".text.xl5.make(),
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: "Buying not supported yet".text.make(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.backgroundColor)),
                  child: "Buy".text.black.bold.make())
              .w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  final Function() onremove;
  final List<Item> itemgot;
  const _CartList({Key? key, required this.itemgot, required this.onremove})
      : super(key: key);

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    // final _cart = CartModel();
    return ListView.builder(
      itemCount: widget.itemgot.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {
            widget.itemgot.removeAt(index);
            widget.onremove();
          },
        ),
        title: widget.itemgot[index].name.text.make(),
      ),
    );
  }
}
