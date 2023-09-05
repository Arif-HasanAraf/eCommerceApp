import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Controller/ExpandedText.dart';
import '../Controller/productController.dart';

class Whitelist_details extends StatelessWidget {


  static const ButtonList = ["Exclusive", "Kids", "Women","Men", "Discounted","Listed"];

  static const banner = ["assets/images/banner1.png","assets/images/banner2.jpg","assets/images/banner3.png"];
  static const earphone = "assets/images/earphone.jpg";
  static const tshirt = "assets/images/tshirt.jpg";
  static const laptop = "assets/images/laptop.png";
  static const hodie = "assets/images/hodie.jpg";
  static const camera = "assets/images/camera.jpg";
  static const headhone = "assets/images/headphone.jpg";
  static const recent_product = [earphone, tshirt, laptop, hodie, camera, headhone];

  final String? title;
  const Whitelist_details({Key? key,required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<productController>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: title!.text.white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Wrap(
                    children:
                    List.generate(5, (index) => Container(
                      padding: EdgeInsets.all(10),
                      width: 130,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                          ),
                          onPressed: (){

                      }, child: Text(controller.subwhite[index]),),
                    )),
                  ),

                ],
              ),
            ),
            HeightBox(15),
            Expanded(
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Container(
                  height: 1000,
                  child: GridView.count(crossAxisCount: 2,
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Image.asset(recent_product[0], fit: BoxFit.cover)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpText(text: "Wired Earphone 3.5 mm jack", ),
                                  Text("\$40.99", style: TextStyle(fontSize: 20, ),),
                                  SizedBox(
                                    width: 170,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.greenAccent,

                                        ),
                                        onPressed: (){

                                        }, child: Text("Add to card")),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:  BoxDecoration(
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Image.asset(recent_product[1], fit: BoxFit.cover)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpText(text: "Bangladeshi made T-shirt", ),
                                  Text("\$10.00", style: TextStyle(fontSize: 20, ),),
                                  SizedBox(
                                    width: 170,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.greenAccent,

                                        ),
                                        onPressed: (){

                                        }, child: Text("Add to card")),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:  BoxDecoration(
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Image.asset(recent_product[2], fit: BoxFit.cover)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpText(text: "HP Core i5 11th Gen Laptop", ),
                                  Text("\$999.99", style: TextStyle(fontSize: 20, ),),
                                  SizedBox(
                                    width: 170,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.greenAccent,

                                        ),
                                        onPressed: (){

                                        }, child: Text("Add to card")),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:  BoxDecoration(
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Image.asset(recent_product[3], fit: BoxFit.cover)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpText(text: "For winter this is a perfect cloth to ware", ),
                                  Text("\$30,50 ", style: TextStyle(fontSize: 20, ),),
                                  SizedBox(
                                    width: 170,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.greenAccent,

                                        ),
                                        onPressed: (){

                                        }, child: Text("Add to card")),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:  BoxDecoration(
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Image.asset(recent_product[4], fit: BoxFit.cover)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpText(text: "Sony 2.3.4 camera with a proper lens", ),
                                  Text("\$ 779 ", style: TextStyle(fontSize: 20, ),),
                                  SizedBox(
                                    width: 170,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.greenAccent,

                                        ),
                                        onPressed: (){

                                        }, child: Text("Add to card")),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:  BoxDecoration(
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 100,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Image.asset(recent_product[5], fit: BoxFit.cover)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpText(text: "Wireless version 4 blutooth headphone", ),
                                  Text("\$ 60.10 ", style: TextStyle(fontSize: 20, ),),
                                  SizedBox(
                                    width: 170,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.greenAccent,

                                        ),
                                        onPressed: (){

                                        }, child: Text("Add to card")),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}