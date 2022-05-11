import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../blocs/application_bloc.dart';
class VetenaryPage extends StatefulWidget {
  const VetenaryPage({ Key? key }) : super(key: key);

  @override
  State<VetenaryPage> createState() => _VetenaryPageState();
}

class _VetenaryPageState extends State<VetenaryPage> {
  @override
  Widget build(BuildContext context) {
    final applicationBloc = Provider.of<ApplicationBloc>(context);
     return Scaffold(
      body: (applicationBloc.currentLocation == null)
      ?const Center(child: CircularProgressIndicator(),
      )
      :ListView(
        children: [
          const TextField(
        
           decoration: InputDecoration(hintText: 'Search Location'),
         ),
              Container(
                height:300.0,
                child: GoogleMap(
                  mapType: MapType.normal,
                  myLocationEnabled: true,
                  initialCameraPosition: CameraPosition(target: LatLng(applicationBloc.currentLocation!.latitude, applicationBloc.currentLocation!.longitude),
                  zoom: 14),
        
                ),  
                ),
            ],
          ),
        
      
      
    );
  }
}