import 'package:animal_rescue/pages/donate_page.dart';
import 'package:animal_rescue/pages/pet_page.dart';
import 'package:animal_rescue/pages/product_page.dart';
import 'package:animal_rescue/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:animal_rescue/pages/category_list.dart';
import 'package:animal_rescue/models/pet_model.dart';
import 'package:animal_rescue/widgets/pet_widget.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'new_post.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class PetPage extends StatefulWidget {
  PetPage({Key? key}) : super(key: key);

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
  // List<Pet> pets = getPetList();

  List<Pet> pets = [
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.orange[100],
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text(
                'Pets',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              toolbarHeight: 70,
              backgroundColor: Colors.orange[400],
              elevation: 2,
              actions: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () async {
                          var pet = await Navigator.pushNamed(
                              context, MyRoutes.newPost,
                              arguments: pets.length + 1);
                          if (pet != null) {
                            pets.insert(0, pet as Pet);
                            setState(() {});
                          }
                        },
                        icon: Icon(Icons.library_add_rounded),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context, MyRoutes.loginRoute);
                        },
                        icon: Icon(Icons.logout),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 16),
                  //   child: Text(
                  //     "Find Your",
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 24,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  //   child: Text(
                  //     "Lovely pet in anywhere",
                  //     style: TextStyle(
                  //       color: Colors.grey[800],
                  //       fontSize: 24,
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pet Category",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildPetCategory(Category.HAMSTER, Colors.orange),
                            buildPetCategory(Category.CAT, Colors.blue),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildPetCategory(Category.BUNNY, Colors.green),
                            buildPetCategory(Category.DOG, Colors.red),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     GestureDetector(
                  //         onTap: () {},
                  //         child: Column(
                  //           children: [
                  //             Icon(Icons.abc_rounded),
                  //             Text('Medicine'),
                  //           ],
                  //         )),
                  //   ],
                  // ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Newest Pet",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 280,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      // children: buildNewestPet(),
                      itemCount: pets.length,
                      itemBuilder: (context, index) {
                        return PetWidget(
                          index: index,
                          pet: pets[index],
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Center(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DonateScreen()),
                          );
                        },
                        child: Text(
                          'Donate',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 10,
                          minimumSize: Size(350, 50),
                          maximumSize: Size(500, 50),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 28,
                  ),

                  Center(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DonateScreen()),
                          );
                        },
                        child: Text(
                          'Vetenaries',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 10,
                          minimumSize: Size(350, 50),
                          maximumSize: Size(500, 50),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 50,
                    margin: EdgeInsets.only(bottom: 16),
                    child: PageView(
                      physics: BouncingScrollPhysics(),
                      children: [],
                    ),
                  ),
                ],
              ),
            )));
  }

  List<Widget> buildNewestPet() {
    List<Widget> list = [];
    for (var i = 0; i < pets.length; i++) {
      if (pets[i].newest) {
        list.add(PetWidget(pet: pets[i], index: i));
      }
    }
    return list;
  }

  Widget buildPetCategory(Category category, Color color) {
    var deviceSize = MediaQuery.of(context).size;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryList(category: category)),
          );
        },
        child: Container(
          // height: deviceSize.height * 0.08,
          height: 80,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color.withOpacity(0.5),
                ),
                child: Center(
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "assets/img/" +
                          (category == Category.HAMSTER
                              ? "hamster"
                              : category == Category.CAT
                                  ? "cat"
                                  : category == Category.BUNNY
                                      ? "bunny"
                                      : "dog") +
                          ".png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    category == Category.HAMSTER
                        ? "Hamsters"
                        : category == Category.CAT
                            ? "Cats"
                            : category == Category.BUNNY
                                ? "Bunnies"
                                : "Dogs",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
