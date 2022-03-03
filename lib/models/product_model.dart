enum Categ { CAT, DOG, BUNNY, HAMSTER }

class ProductModel {
  static final products = [
    Product(
      id: 1,
      name: 'Pedigree, Best food',
      descript: "Dog Food",
      img: 'assets/img/products/dog_food.jpg',
      price: 1000,
      category: Categ.DOG,
    ),
    Product(
      id: 2,
      name: 'NexGard',
      descript: "Dog Medicine",
      img: 'assets/img/products/dog_med.jpg',
      price: 2000,
      category: Categ.DOG,
    ),
    Product(
      id: 3,
      name: 'whiskas',
      descript: "Cat Food",
      img: 'assets/img/products/cat_food.png',
      price: 1000,
      category: Categ.CAT,
    ),
    Product(
      id: 4,
      name: 'whiskas',
      descript: "Cat Food",
      img: 'assets/img/products/cat_med.jpg',
      price: 1000,
      category: Categ.CAT,
    ),
    Product(
      id: 5,
      name: 'SUNBURST',
      descript: "Hamster Food",
      img: 'assets/img/products/hamster_food.jpg',
      price: 1000,
      category: Categ.HAMSTER,
    ),
    Product(
      id: 6,
      name: 'SUNBURST',
      descript: "Hamster Medicine",
      img: 'assets/img/products/hamster_med.jpg',
      price: 1000,
      category: Categ.HAMSTER,
    ),
    Product(
      id: 7,
      name: 'Fiesta',
      descript: "Bunny Food",
      img: 'assets/img/products/bunny_food.jpg',
      price: 1000,
      category: Categ.BUNNY,
    ),
    Product(
      id: 8,
      name: 'BSAVA',
      descript: "Bunny Medicine",
      img: 'assets/img/products/bunny_med.jpg',
      price: 1000,
      category: Categ.BUNNY,
    ),
  ];
}

class Product {
  final int id;
  final String name;
  final String descript;
  final Categ category;
  final String img;
  final num price;

  Product({
    required this.id,
    required this.name,
    required this.descript,
    required this.category,
    required this.img,
    required this.price,
  });
}
