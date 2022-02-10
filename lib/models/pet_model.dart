import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:animal_rescue/pages/new_post.dart';

enum Category { CAT, DOG, BUNNY, HAMSTER }

class Pet {
  final int id;
  final String name;
  final String location;
  final Category category;
  final String imageUrl;
  final String contact;
  bool newest;

  Pet(
    this.id,
    this.name,
    this.location,
    this.category,
    this.imageUrl,
    this.contact,
    this.newest,
  );
}

List<Pet> getPetList() {
  return <Pet>[
    Pet(1, "Abyssinian Cats", "Vashi", Category.CAT,
        "assets/img/cats/cat_1.jpg", '9132687435', true),
    Pet(2, "Scottish Fold", "Bhiwandi", Category.CAT,
        "assets/img/cats/cat_2.jpg", '9132687435', false),
    Pet(3, "Ragdoll", "Turbhe", Category.CAT, "assets/img/cats/cat_3.jpg",
        '9132687435', false),
    Pet(4, "Burmés", "Panvel", Category.CAT, "assets/img/cats/cat_4.jpg",
        '9132687435', true),
    Pet(5, "American Shorthair", "Karnala", Category.CAT,
        "assets/img/cats/cat_5.jpg", '9132687435', false),
    Pet(6, "British Shorthair", "Vashi", Category.CAT,
        "assets/img/cats/cat_6.jpg", '9132687435', false),
    Pet(7, "Abyssinian Cats", "Panvel", Category.CAT,
        "assets/img/cats/cat_7.jpg", '9132687435', false),
    Pet(8, "Scottish Fold", "Karnala", Category.CAT,
        "assets/img/cats/cat_8.jpg", '9132687435', false),
    Pet(9, "Ragdoll", "Vashi", Category.CAT, "assets/img/cats/cat_9.jpg",
        '9132687435', true),
    Pet(10, "Roborowski", "Turbhe", Category.HAMSTER,
        "assets/img/hamsters/hamster_1.jpg", '9132687435', true),
    Pet(11, "Ruso", "Bhiwandi", Category.HAMSTER,
        "assets/img/hamsters/hamster_2.jpg", '9132687435', false),
    Pet(12, "Golden", "Kharghar", Category.HAMSTER,
        "assets/img/hamsters/hamster_3.jpg", '9132687435', false),
    Pet(13, "Chinese", "Kurla", Category.HAMSTER,
        "assets/img/hamsters/hamster_4.jpg", '9132687435', true),
    Pet(14, "Dwarf Campbell", "Bandra", Category.HAMSTER,
        "assets/img/hamsters/hamster_5.jpg", '9132687435', false),
    Pet(15, "Syrian", "Andheri", Category.HAMSTER,
        "assets/img/hamsters/hamster_6.jpg", '9132687435', false),
    Pet(16, "Dwarf Winter", "Turbhe", Category.HAMSTER,
        "assets/img/hamsters/hamster_7.jpg", '9132687435', false),
    Pet(17, "American Rabbit", "Panvel", Category.BUNNY,
        "assets/img/bunnies/bunny_1.jpg", '9132687435', true),
    Pet(18, "Belgian Hare Rabbit", "Turbhe", Category.BUNNY,
        "assets/img/bunnies/bunny_2.jpg", '9132687435', false),
    Pet(19, "Blanc de Hotot", "Bhiwandi", Category.BUNNY,
        "assets/img/bunnies/bunny_3.jpg", '9132687435', false),
    Pet(20, "Californian Rabbits", "Kurla", Category.BUNNY,
        "assets/img/bunnies/bunny_4.jpg", '9132687435', true),
    Pet(21, "Checkered Giant Rabbit", "Bhiwandi", Category.BUNNY,
        "assets/img/bunnies/bunny_5.jpg", '9132687435', false),
    Pet(22, "Dutch Rabbit", "Turbhe", Category.BUNNY,
        "assets/img/bunnies/bunny_6.jpg", '9132687435', false),
    Pet(23, "English Lop", "Panvel", Category.BUNNY,
        "assets/img/bunnies/bunny_7.jpg", '9132687435', false),
    Pet(24, "English Spot", "Panvel", Category.BUNNY,
        "assets/img/bunnies/bunny_8.jpg", '9132687435', true),
    Pet(25, "Affenpinscher", "Kharghar", Category.DOG,
        "assets/img/dogs/dog_1.jpg", '9132687435', true),
    Pet(26, "Akita Shepherd", "Andheri", Category.DOG,
        "assets/img/dogs/dog_2.jpg", '9132687435', false),
    Pet(27, "American Foxhound", "Bandra", Category.DOG,
        "assets/img/dogs/dog_3.jpg", '9132687435', false),
    Pet(28, "Shepherd Dog", "Kurla", Category.DOG, "assets/img/dogs/dog_4.jpg",
        '9132687435', true),
    Pet(29, "Australian Terrier", "Kharghar", Category.DOG,
        "assets/img/dogs/dog_5.jpg", '9132687435', false),
    Pet(30, "Bearded Collie", "Turbhe", Category.DOG,
        "assets/img/dogs/dog_6.jpg", '9132687435', false),
    Pet(31, "Belgian Sheepdog", "Bandra", Category.DOG,
        "assets/img/dogs/dog_7.jpg", '9132687435', false),
    Pet(32, "Bloodhound", "Panvel", Category.DOG, "assets/img/dogs/dog_8.jpg",
        '9132687435', true),
    Pet(33, "Boston Terrier", "Bhiwandi", Category.DOG,
        "assets/img/dogs/dog_9.jpg", '9132687435', true),
    Pet(34, "Chinese Shar-Pei", "Bhiwandi", Category.DOG,
        "assets/img/dogs/dog_10.jpg", '9132687435', false),
    Pet(35, "Border Collie", "Panvel", Category.DOG,
        "assets/img/dogs/dog_11.jpg", '9132687435', false),
    Pet(36, "Chow Chow", "Bandra", Category.DOG, "assets/img/dogs/dog_12.jpg",
        '9132687435', true),
  ];
}
