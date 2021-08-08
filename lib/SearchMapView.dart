import 'package:flutter/material.dart';

import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'Profile.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {


  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(23.6850, 90.3563),
    zoom: 6.95,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);





  Marker markerChuadanga = Marker(markerId: MarkerId("markerChuadanga"),position: LatLng(23.6161,88.8263),
      infoWindow: InfoWindow(
          title: "20 available",
          snippet: "view all",
          onTap: () {
            //Navigator.push(context, MaterialPageRoute(builder: builder))
          }

      ));

  Marker markerDhaka = Marker(markerId: MarkerId("markerChuadanga"),position: LatLng(23.8103, 90.4125),
      infoWindow: InfoWindow(
          title: "20 available",
          snippet: "view all",
          onTap: () {
            //Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => const Profile(),))
          }

      ));



  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(

          children: [
            Container(height: 30,child: TextField(decoration: InputDecoration(hintText: "Search item here"),)),
            SizedBox(height: 10,),
            Expanded(
              child: SizedBox(),
              //height: 600,
              //padding: EdgeInsets.only(top: 100,bottom: 70),
              /*child: GoogleMap(
                  compassEnabled: false,
                  myLocationButtonEnabled: false,
                  rotateGesturesEnabled: false,
                  markers: {markerChuadanga,markerDhaka},
                  mapType: MapType.terrain,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                    addMarker();
                  },
                ),*/
            ),

          ],
        ),
      ),



    );
  }
  int _selectedIndex = 0;
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  addMarker() {
    setState(() {
      markerChuadanga = Marker(markerId: MarkerId("markerChuadanga"),position: LatLng(23.6161,88.8263),
          infoWindow: InfoWindow(
              title: "20 available",
              snippet: "view all",
              onTap: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) =>  Profile(),
                ));
              }

          ));
      markerDhaka = Marker(markerId: MarkerId("markerChuadanga"),position: LatLng(23.8103, 90.4125),
          infoWindow: InfoWindow(
              title: "1020 available",
              snippet: "view all",
              onTap: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) => Profile(),
                ));
              }

          ));

    });
  }


}
