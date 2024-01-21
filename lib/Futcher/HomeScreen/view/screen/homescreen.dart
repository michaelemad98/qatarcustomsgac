import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qatarcustomsgac/Futcher/HomeScreen/controller/homecontroller.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: HomeController(),
        builder: (controller) {
          return Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset('assets/images/sreenmap.png',
                fit: BoxFit.fill,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              //rwis
              Positioned(
                bottom: 225,
                left: 75,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);
                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
              //foiret
              Positioned(
                top: 190,
                left: 130,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);
                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
              //ras lefan
              Positioned(
                top:110,
                left: 195,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);
                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
              // elza7'ira
              Positioned(
                  top: 132,
                  left: 285,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);
                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
              //smismia
              Positioned(
                top: 140,
                left: 365,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);
                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
              //eldo7a
              Positioned(
                top: 120,
                left: 490,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);

                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
              //elwakra
              Positioned(
                top: 95,
                right: 350,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);
                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
              //Mesied
              Positioned(
                top: 115,
                right: 260,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);
                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
              //d7'an
              Positioned(
                bottom: 45,
                left: 435,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);
                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
              //om bab
              Positioned(
                bottom: 45,
                right: 365,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);
                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
              //abo samra
              Positioned(
                bottom: 60,
                right: 130,
                child: IconButton(
                  onPressed: (){
                    controller.btnshowDialog(context);
                  },
                  icon: Icon(Icons.circle,color: Colors.red,),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
