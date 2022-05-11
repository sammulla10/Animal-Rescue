import 'package:flutter/material.dart' show ChangeNotifier;
import 'package:flutter/cupertino.dart';

import 'package:geolocator/geolocator.dart';

import '../Services/geolocator_service.dart';

class ApplicationBloc with ChangeNotifier{
  final geolocatorService = GeolocatorSerice();
     Position? currentLocation;

  
 ApplicationBloc() {
   setcurrentLocation();
}


setcurrentLocation() async {
  currentLocation = await geolocatorService.getCurrentLocation();
  notifyListeners();
}
}