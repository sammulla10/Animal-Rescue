import 'package:animal_rescue/pages/pet_detail.dart';
import 'package:flutter/material.dart';
import 'package:animal_rescue/models/pet_model.dart';

class PetWidget extends StatelessWidget {
  final Pet pet;
  final int index;

  PetWidget({required this.pet, required this.index});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PetDetailPage(pet: pet)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        margin: EdgeInsets.only(
            right: index != null ? 16 : 0,
            left: index == 0 ? 16 : 0,
            bottom: 16),
        width: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: [
                  Hero(
                    tag: pet.imageUrl,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(pet.imageUrl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    pet.name,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey[600],
                        size: 18,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        pet.location,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // -------------------------------------NEW WIDGET-------------------------------
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   // mainAxisSize: MainAxisSize.min,
      //   // crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Flexible(
      //       fit: FlexFit.loose,
      //       child: Container(
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage(pet.imageUrl),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         // margin: EdgeInsets.only(
      //         //   right: 16,
      //         //   left: 16,
      //         //   bottom: 16,
      //         // ),
      //         width: deviceSize.width * 0.92,
      //         // height: deviceSize.height * 0.6,
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
      //       child: Text(
      //         pet.name,
      //         style: TextStyle(
      //           color: Colors.grey[800],
      //           fontSize: 18,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
