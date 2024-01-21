import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeController extends GetxController{

  void btnshowDialog(context){
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

}