import 'package:animal_rescue/models/data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
class DatabaseSercice{
  static FirebaseDatabase database =  FirebaseDatabase.instance;
  static String saveData(Data data){
    var ref = database.ref(FirebaseAuth.instance.currentUser!.uid);
    var id = ref.push();
    id.set({
      "name": data.name,
      "data": data.location,
      "category":data.category,
      "contact":data.contact,
      "updatedAt": data.updatedAt.toString(),

    });
    return id.key!;

  }
}