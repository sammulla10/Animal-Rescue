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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pet> pets = getPetList();
  int currentindex = 0;
  final screen = [
    PetPage(),
    ProductPage(),
    NewPost(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[100],
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title: Text(
        //     'Home',
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //       fontSize: 20,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   toolbarHeight: 70,
        //   backgroundColor: Colors.orange[400],
        //   elevation: 2,
        //   actions: [
        //     Padding(
        //       padding: EdgeInsets.all(16),
        //       child: Row(
        //         children: [
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.pushNamed(context, MyRoutes.newPost);
        //             },
        //             child: Icon(
        //               Icons.library_add_rounded,
        //               color: Colors.grey[800],
        //             ),
        //           ),
        //           SizedBox(width: 16),
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.pushNamed(context, MyRoutes.loginRoute);
        //             },
        //             child: Text(
        //               "Log out",
        //               style: TextStyle(
        //                 color: Colors.grey[800],
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        // body: SingleChildScrollView(
        //   physics: BouncingScrollPhysics(),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       SizedBox(
        //         height: 20,
        //       ),
        //       // Padding(
        //       //   padding: EdgeInsets.symmetric(horizontal: 16),
        //       //   child: Text(
        //       //     "Find Your",
        //       //     style: TextStyle(
        //       //       color: Colors.black,
        //       //       fontWeight: FontWeight.bold,
        //       //       fontSize: 24,
        //       //     ),
        //       //   ),
        //       // ),
        //       // Padding(
        //       //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //       //   child: Text(
        //       //     "Lovely pet in anywhere",
        //       //     style: TextStyle(
        //       //       color: Colors.grey[800],
        //       //       fontSize: 24,
        //       //     ),
        //       //   ),
        //       // ),
        //       Padding(
        //         padding: EdgeInsets.all(16),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Text(
        //               "Pet Category",
        //               style: TextStyle(
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.grey[800],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 8),
        //         child: Column(
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               children: [
        //                 buildPetCategory(Category.HAMSTER, Colors.orange),
        //                 buildPetCategory(Category.CAT, Colors.blue),
        //               ],
        //             ),
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               children: [
        //                 buildPetCategory(Category.BUNNY, Colors.green),
        //                 buildPetCategory(Category.DOG, Colors.red),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //       // Row(
        //       //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       //   children: [
        //       //     GestureDetector(
        //       //         onTap: () {},
        //       //         child: Column(
        //       //           children: [
        //       //             Icon(Icons.abc_rounded),
        //       //             Text('Medicine'),
        //       //           ],
        //       //         )),
        //       //   ],
        //       // ),
        //       Padding(
        //         padding: EdgeInsets.all(16),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Text(
        //               "Newest Pet",
        //               style: TextStyle(
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.grey[800],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Container(
        //         height: 280,
        //         child: ListView(
        //           physics: BouncingScrollPhysics(),
        //           scrollDirection: Axis.horizontal,
        //           children: buildNewestPet(),
        //         ),
        //       ),

        //       SizedBox(
        //         height: 16,
        //       ),

        //       Center(
        //         child: ElevatedButton(
        //           onPressed: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => DonateScreen()),
        //             );
        //           },
        //           child: Text(
        //             'Donate',
        //             textAlign: TextAlign.center,
        //             style: TextStyle(
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.black),
        //           ),
        //           style: ElevatedButton.styleFrom(
        //             elevation: 10,
        //             minimumSize: Size(350, 50),
        //             maximumSize: Size(500, 50),
        //           ),
        //         ),
        //       ),

        //       // Container(
        //       //   height: 100,
        //       //   margin: EdgeInsets.only(bottom: 16),
        //       //   child: PageView(
        //       //     physics: BouncingScrollPhysics(),
        //       //     children: [],
        //       //   ),
        //       // ),
        //     ],
        //   ),
        // ),

        body: screen[currentindex],

        bottomNavigationBar: BottomNavigationBar(
          // selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.shifting,
          currentIndex: currentindex,
          onTap: (index) => setState(() => currentindex = index),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.pets_outlined),
                label: 'Pets',
                backgroundColor: Colors.orange[400]),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Products',
                backgroundColor: Colors.blue[800]),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_add_rounded),
              label: 'Add Post',
              backgroundColor: Colors.blueGrey[800],
            ),
          ],
        ),
      ),
    );
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
        onDoubleTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductPage()),
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

  List<Widget> buildNewestPet() {
    List<Widget> list = [];
    for (var i = 0; i < pets.length; i++) {
      if (pets[i].newest) {
        list.add(PetWidget(pet: pets[i], index: i));
      }
    }
    return list;
  }
}
