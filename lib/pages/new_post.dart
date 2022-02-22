import 'dart:io';

import 'package:animal_rescue/models/category_list.dart';
import 'package:animal_rescue/models/pet_model.dart';
import 'package:animal_rescue/models/pet_widget.dart';
import 'package:animal_rescue/utils/routes.dart';
import 'package:flutter/cupertino.dart';
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
  List<Pet> pets = getPetList();

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.orange[400],
          elevation: 2,
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
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.tag,
                      color: Colors.orange[700],
                    ),
                    hintText: 'Enter Name or Breed',
                    labelText: 'Name or Breed',
                    labelStyle: TextStyle(color: Colors.orange[500]),
                  ),
                  validator: (value1) {
                    if (value1 == null || value1.isEmpty) {
                      return 'Please enter Name or Breed of Pet. This required field';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.location,
                      color: Colors.orange[700],
                    ),
                    hintText: 'Enter Location',
                    labelText: 'Location',
                    labelStyle: TextStyle(color: Colors.orange[500]),
                  ),
                  validator: (value2) {
                    if (value2 == null || value2.isEmpty) {
                      return 'Please enter your Location. This required field';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.t_bubble,
                      color: Colors.orange[700],
                    ),
                    hintText: 'Enter Category e.g.BUNNY,DOG,CAT',
                    labelText: 'Category',
                    labelStyle: TextStyle(color: Colors.orange[500]),
                  ),
                  validator: (value3) {
                    if (value3 == null || value3.isEmpty) {
                      return 'Please enter Name or Breed of Pet. This required field';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.phone,
                      color: Colors.orange[700],
                    ),
                    hintText: 'Enter your contact number',
                    labelText: 'Contact',
                    labelStyle: TextStyle(color: Colors.orange[500]),
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
                  child: Text('Select an Image'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange[300],
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => CategoryList(category: value3)),
                      // );
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Text('Done'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[300],
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

  List<Widget> buildNewestPet() {
    List<Widget> newlist = [];
    for (var i = 0; i < pets.length; i++) {
      if (pets[i].newest) {
        newlist.add(
          PetWidget(pet: pets[i], index: i),
        );
      }
    }
    return newlist;
  }
}
