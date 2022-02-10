import 'package:animal_rescue/models/owner_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2.00,
      child: Container(
        color: Colors.orange[200],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.orange[400]),
                margin: EdgeInsets.zero,
                accountName: Text(
                  'Saad Mulla',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                accountEmail: Text(
                  'saadnmulla@gmail.com',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/user_avatar.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.news_solid,
                color: Colors.black,
              ),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.person_2_fill,
                color: Colors.black,
              ),
              title: Text(
                'Profile',
                textScaleFactor: 1.2,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.black,
              ),
              title: Text(
                'Email me',
                textScaleFactor: 1.2,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
