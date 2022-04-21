enum Categ { FOOD, MED }

class ProductModel {
  static final items = [
    Item(
      id: 1,
      name: 'Pedigree, Best food',
      descript: "Dog Food",
      img: 'assets/img/products/dog_food.jpg',
      price: 1000,
      category: Categ.FOOD,
    ),
    Item(
      id: 2,
      name: 'NexGard',
      descript: "Dog Medicine",
      img: 'assets/img/products/dog_med.jpg',
      price: 2000,
      category: Categ.MED,
    ),
    Item(
      id: 3,
      name: 'whiskas',
      descript: "Cat Food",
      img: 'assets/img/products/cat_food.png',
      price: 1000,
      category: Categ.FOOD,
    ),
    Item(
      id: 4,
      name: 'whiskas',
      descript: "Cat Medicine",
      img: 'assets/img/products/cat_med.jpg',
      price: 1000,
      category: Categ.MED,
    ),
    Item(
      id: 5,
      name: 'SUNBURST',
      descript: "Hamster Food",
      img: 'assets/img/products/hamster_food.jpg',
      price: 1000,
      category: Categ.FOOD,
    ),
    Item(
      id: 6,
      name: 'SUNBURST',
      descript: "Hamster Medicine",
      img: 'assets/img/products/hamster_med.jpg',
      price: 1000,
      category: Categ.MED,
    ),
    Item(
      id: 7,
      name: 'Fiesta',
      descript: "Bunny Food",
      img: 'assets/img/products/bunny_food.jpg',
      price: 1000,
      category: Categ.FOOD,
    ),
    Item(
      id: 8,
      name: 'BSAVA',
      descript: "Bunny Medicine",
      img: 'assets/img/products/bunny_med.jpg',
      price: 1000,
      category: Categ.MED,
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String descript;
  final Categ category;
  final String img;
  final num price;

  Item({
    required this.id,
    required this.name,
    required this.descript,
    required this.category,
    required this.img,
    required this.price,
  });
}
