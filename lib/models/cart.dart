import 'package:animal_rescue/models/product_model.dart';
import 'package:flutter/material.dart';

class CartModel {
  late ProductModel _product;

  final List<int> _itemIds = [];

  ProductModel get product => _product;

  set product(ProductModel newProduct) {
    assert(newProduct != null);
    _product = newProduct;
  }

  List<Item> get items => _itemIds.map((id) => _product.getById(id)).toList();

  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
