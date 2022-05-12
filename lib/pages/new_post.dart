import 'dart:io';

import 'package:animal_rescue/pages/category_list.dart';
import 'package:animal_rescue/models/pet_model.dart' as Pet;
import 'package:animal_rescue/widgets/pet_widget.dart';
import 'package:animal_rescue/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'home_page.dart';

class NewPost extends StatefulWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  // List<Pet> pets = getPetList();

  final nameController = TextEditingController();
  final locationController = TextEditingController();
  final categoryController = TextEditingController();
  final contactController = TextEditingController();
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.blueGrey[500],
          elevation: 2,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.grey[800],
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'New Post',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.tag,
                      color: Colors.blueGrey[700],
                    ),
                    hintText: 'Enter Name or Breed',
                    labelText: 'Name or Breed',
                    labelStyle: TextStyle(color: Colors.blueGrey[500]),
                  ),
                  cursorColor: Colors.blueGrey[900],
                  validator: (value1) {
                    if (value1 == null || value1.isEmpty) {
                      return 'Please enter Name or Breed of Pet. This required field';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: locationController,
                  textCapitalization: TextCapitalization.sentences,
                  cursorColor: Colors.blueGrey[900],
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.location,
                      color: Colors.blueGrey[700],
                    ),
                    hintText: 'Enter Location',
                    labelText: 'Location',
                    labelStyle: TextStyle(color: Colors.blueGrey[500]),
                  ),
                  validator: (value2) {
                    if (value2 == null || value2.isEmpty) {
                      return 'Please enter your Location. This required field';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: categoryController,
                  textCapitalization: TextCapitalization.sentences,
                  cursorColor: Colors.blueGrey[900],
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.t_bubble,
                      color: Colors.blueGrey[700],
                    ),
                    hintText: 'Enter Category e.g.BUNNY,DOG,CAT',
                    labelText: 'Category',
                    labelStyle: TextStyle(color: Colors.blueGrey[500]),
                  ),
                  validator: (value3) {
                    if (value3 == null || value3.isEmpty) {
                      return 'Please enter Name or Breed of Pet. This required field';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: contactController,
                  cursorColor: Colors.blueGrey[900],
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.phone,
                      color: Colors.blueGrey[700],
                    ),
                    hintText: 'Enter your contact number',
                    labelText: 'Contact',
                    labelStyle: TextStyle(color: Colors.blueGrey[500]),
                  ),
                  validator: (value4) {
                    if (value4 == null || value4.isEmpty) {
                      return 'Please enter Name or Breed of Pet. This required field';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    var addimage = pickImage();
                  },
                  child: Text(
                    'Select an Image',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey[600],
                    fixedSize: Size(350, 50),
                    elevation: 5,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      var category;
                      switch (categoryController.text.toUpperCase()) {
                        case "CAT":
                          category = Pet.Category.CAT;
                          break;
                        case "HAMSTER":
                          category = Pet.Category.HAMSTER;
                          break;
                        case "BUNNY":
                          category = Pet.Category.BUNNY;
                          break;

                        default:
                          category = Pet.Category.DOG;
                          break;
                      }
                      var petdata = Pet.Pet(
                          id as int,
                          nameController.text,
                          locationController.text,
                          category,
                          'assets/img/dogs/dog_3.jpg',
                          contactController.text,
                          true);
                      Navigator.pop(context, petdata);
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey[600],
                      fixedSize: Size(350, 50),
                      elevation: 5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // List<Widget> buildNewestPet() {
  //   List<Widget> newlist = [];
  //   for (var i = 0; i < pets.length; i++) {
  //     if (pets[i].newest) {
  //       newlist.add(
  //         PetWidget(pet: pets[i], index: i),
  //       );
  //     }
  //   }
  //   return newlist;
  // }
}
