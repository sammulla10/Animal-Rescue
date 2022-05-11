import 'package:animal_rescue/models/cart.dart';
import 'package:animal_rescue/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyTheme.creamcolor,
        appBar: AppBar(
          backgroundColor: Colors.orange[100],
          title: "Cart".text.xl2.bold.make(),
        ),
        body: Column(
          children: [
            _CartList().p32().expand(),
            Divider(),
            _CartTotal(),
          ],
        ),
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\₹${_cart.totalprice}".text.xl5.make(),
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
  const _CartList({Key? key}) : super(key: key);

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}
