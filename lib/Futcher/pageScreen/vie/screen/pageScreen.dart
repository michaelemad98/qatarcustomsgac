import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qatarcustomsgac/Futcher/pageScreen/controller/pagecontroller.dart';
import 'package:qatarcustomsgac/Futcher/pageScreen/model/pageModel.dart';

class PageScreen extends StatelessWidget {
  final int id;

  const PageScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child:RotatedBox(
          quarterTurns: 3,
          child: GetBuilder(
              init: PagelistController(),
              builder: (controller) {
                PageObject pageObject = controller.GetPageOpject(id);
                return ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(
                                    Icons.clear,
                                    color: Colors.red,
                                  )),
                          
                              Text(
                                'منطقه ${pageObject.name}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                        ),
                        pageObject.img.length > 0
                            ? Container(
                                height: 300,
                                margin: EdgeInsets.all(20),
                                child: ListView.builder(
                                    itemCount: pageObject.img.length,
                                    // shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.all(20),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30),
                                          child: Image.asset(
                                            '${pageObject.img[index]}',
                                            // fit: BoxFit.cover,
                                            height: height * 0.3,
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            : Container(
                                margin: EdgeInsets.all(20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/images/logo.png',
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    height: height * 0.3,
                                  ),
                                ),
                              ),
                        Text(
                          '${pageObject.descriprion}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
