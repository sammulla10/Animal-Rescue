
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SingleClinic extends StatefulWidget {
 final Map clinicData;
  const SingleClinic({ Key? key,required this.clinicData}) :super(key: key);

  @override
  State<SingleClinic> createState() => _SingleClinicState();
}

class _SingleClinicState extends State<SingleClinic> {
  @override

   final Map<String, Marker> _markers = {};
    Future<void> _onMapCreated(GoogleMapController controller) async {
    _markers.clear();
    setState(() {
      final marker = Marker(
        // icon: pinLocationIcon!,
        markerId: MarkerId(widget.clinicData['name']),
        position: LatLng(widget.clinicData['lat'], widget.clinicData['lng']),
        infoWindow: InfoWindow(
            title: widget.clinicData['name'],
            snippet: widget.clinicData['address'],
            onTap: () {
              print("${widget.clinicData['lat']}, ${widget.clinicData['lng']}");
            }),
        onTap: () {
          print("Clicked on marker");
        },
      );
      print("${widget.clinicData['lat']}, ${widget.clinicData['lng']}");
      _markers[widget.clinicData['name']] = marker;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About ${widget.clinicData['name']}')),
      body: Column(
        children: [
          Card(
            elevation: 5,
            child: Column(
              children: [
                Image.network(
                  widget.clinicData['image'],
                  height: 200,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        widget.clinicData['name'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Direction"),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(widget.clinicData['lat'], widget.clinicData['lng']),
                zoom: 7,
              ),
              markers: _markers.values.toSet(),
            ),
          )
        ],
      ),
  
    );
  }
}