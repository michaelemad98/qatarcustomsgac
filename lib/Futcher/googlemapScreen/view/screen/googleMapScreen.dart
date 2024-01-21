import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qatarcustomsgac/Futcher/googlemapScreen/controller/googlemapController.dart';

class QatarMAPScreen extends StatefulWidget {
  const QatarMAPScreen({super.key});

  @override
  State<QatarMAPScreen> createState() => _QatarMAPScreenState();
}

class _QatarMAPScreenState extends State<QatarMAPScreen> {
  BitmapDescriptor ?customeIcon;
  Set<Marker>? markers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    markers  = Set.from([]);
  }
  createMareke(context){
    if(customeIcon==null){
      ImageConfiguration configuration = createLocalImageConfiguration(context);
      BitmapDescriptor.fromAssetImage(configuration, 'assets/images/circle.png').then((value){
        setState(() {
          customeIcon = value;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    createMareke(context);
    return Scaffold(
      body: GetBuilder(
        init: GetGoogleMapController(context: context),
        builder: (controller) {
          return RotatedBox(
            quarterTurns: 3,
            child: Stack(
              children: [
                GoogleMap(

                  mapType: MapType.normal,
                  zoomControlsEnabled: false,
                  myLocationButtonEnabled: false,
                  markers: Set<Marker>.of(controller.markers)  ,
                   onTap: (pos){
                     print(pos);
                     Marker(
                       markerId:MarkerId('1'),
                       icon: customeIcon!,
                       position: pos,

                     );
                   },
                  onMapCreated: (GoogleMapController googlemapcontroller){
                    controller.mapgoogleController.complete(googlemapcontroller);
                  },
                  initialCameraPosition: CameraPosition(
                    bearing: 0.0,
                    target: LatLng(25.3548,51.1839),
                    zoom: 9,
                    tilt: 0.0,
                  ),
                ),
                Positioned(
                    right: 20,
                    top: 30,
                    child: Text('مناطق جمارك قطر',
                    style: TextStyle(
                      color: Color(0xff8a1538),
                      fontWeight: FontWeight.w900,
                      fontSize: 20
                    ),
                    )),
                Positioned(
                    left: 20,
                    top: 20,
                    child: Image.asset('assets/images/logo.png',width: 100,height: 100,))
              ],
            ),
          );
        }
      ),
    );
  }
}
