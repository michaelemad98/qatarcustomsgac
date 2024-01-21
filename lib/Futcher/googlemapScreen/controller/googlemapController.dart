

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qatarcustomsgac/Futcher/HomeScreen/view/screen/homescreen.dart';
import 'package:qatarcustomsgac/Futcher/pageScreen/vie/screen/pageScreen.dart';

class GetGoogleMapController extends GetxController{
  final BuildContext context;
  GetGoogleMapController({required this.context});
 void btnshowDialog(){
    showDialog(context: context, builder: (BuildContext context){
      return RotatedBox(
        quarterTurns: 3,
        child: AlertDialog(
          title: Text('Hello Dialog'),
          content: Text('This is a simple dialog in Flutter.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Close'),
            ),
          ],
        ),
      );
    });
  }
  @override
  void onInit() async {
    markers.addAll(list);
    super.onInit();
  }
Completer<GoogleMapController> mapgoogleController = Completer();

List <Marker> markers = [];
List <Marker> list = [
  Marker(markerId: MarkerId('1'),
  position: LatLng(26.1301,51.1978),
  onTap: (){
    Get.to(()=>PageScreen(id: 1,));
  },
  ),
  Marker(markerId: MarkerId('2'),
  position: LatLng(26.0243,51.3706),
    onTap: (){
      Get.to(()=>PageScreen(id: 2,));

    }
  ),
  Marker(markerId: MarkerId('3'),
  position: LatLng(25.8828,51.5269),
    onTap: (){
      Get.to(()=>PageScreen(id: 3,));

    }
  ),
  Marker(markerId: MarkerId('4'),
  position: LatLng(25.7318,51.5413),
    onTap: (){
      Get.to(()=>PageScreen(id: 4,));

    },
  ),
  Marker(markerId: MarkerId('5'),
  position: LatLng(25.5756,51.4808),
    onTap: (){
      Get.to(()=>PageScreen(id: 5,));

    },
  ),
  Marker(markerId: MarkerId('doha6'),
  position: LatLng(25.2854,51.5310),
    onTap: (){
      Get.to(()=>PageScreen(id: 13,));
    },
  ),
  Marker(markerId: MarkerId('wakra7'),
  position: LatLng(25.1659,51.5976),
    onTap: (){
      Get.to(()=>PageScreen(id: 7,));

    },
  ),Marker(markerId: MarkerId('mesaieed8'),
  position: LatLng(24.9909,51.5493),
    onTap: (){
      Get.to(()=>PageScreen(id: 8,));
    },
  ),
  Marker(markerId: MarkerId('abusamra9'),
  position: LatLng(24.7502,50.8522),
    onTap: (){
      Get.to(()=>PageScreen(id: 14,));
    },
  ),
  Marker(markerId: MarkerId('ummbab10'),
  position: LatLng(25.2092,50.8012),
    onTap: (){
      Get.to(()=>PageScreen(id: 10,));

    },
  ),
  Marker(markerId: MarkerId('dukhan11'),
  position: LatLng(25.4280,50.7833),
    onTap: (){
      Get.to(()=>PageScreen(id: 11,));

    },
  ),
];
}
