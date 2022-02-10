import 'package:flutter/material.dart';
import 'package:animal_rescue/models/pet_model.dart';
import 'package:animal_rescue/models/pet_widget.dart';

class CategoryList extends StatelessWidget {
  final Category category;

  CategoryList({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          (category == Category.HAMSTER
                  ? "Hamster"
                  : category == Category.CAT
                      ? "Cat"
                      : category == Category.BUNNY
                          ? "Bunny"
                          : "Dog") +
              " Category",
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                childAspectRatio: 1 / 1.55,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                children: getPetList()
                    .where((i) => i.category == category)
                    .map((item) {
                  return PetWidget(
                    pet: item,
                    index: category.index,
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

 
}
