import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController; // Initialize to null
  Location location = Location();
  LocationData? currentLocation; // Initialize to null

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  void _getLocation() async {
    try {
      LocationData locationResult = await location.getLocation();
      setState(() {
        currentLocation = locationResult;
      });

      if (mapController != null) {
        mapController!.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(
                currentLocation?.latitude ?? 0.0, // Use null-aware operator
                currentLocation?.longitude ?? 0.0, // Use null-aware operator
              ),
              zoom: 15.0,
            ),
          ),
        );
      }
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map App'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: currentLocation != null
            ? CameraPosition(
          target: LatLng(
            currentLocation!.latitude?? 0.0,
            currentLocation!.longitude?? 0.0,
          ),
          zoom: 15.0,
        )
            : CameraPosition(
          target: LatLng(0.0, 0.0),
          zoom: 2.0,
        ),
        myLocationEnabled: true,
        mapType: MapType.normal,
        markers: currentLocation != null
            ? Set.from([
          Marker(
            markerId: MarkerId("userLocation"),
            position: LatLng(
              currentLocation!.latitude ?? 0.0, // Use null-aware operator
              currentLocation!.longitude ?? 0.0, // Use null-aware operator
            ),
            infoWindow: InfoWindow(title: "Your Location"),
          ),
        ])
            : Set(),
      ),
    );
  }
}
