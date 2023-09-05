import 'package:ecommerceapp/Controller/ExpandedText.dart';
import 'package:ecommerceapp/Widget/DimonsionSize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Details/FontPage_productDetails/product_details_1.dart';
import '../Details/FontPage_productDetails/product_details_2.dart';
import '../Details/FontPage_productDetails/product_details_3.dart';
import '../Details/FontPage_productDetails/product_details_4.dart';
import '../Details/FontPage_productDetails/product_details_5.dart';
import '../Details/FontPage_productDetails/product_details_6.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const banner = ["assets/images/banner1.png","assets/images/banner2.jpg","assets/images/banner3.png"];
    const earphone = "assets/images/earphone.jpg";
    const tshirt = "assets/images/tshirt.jpg";
    const laptop = "assets/images/laptop.png";
    const hodie = "assets/images/hodie.jpg";
    const camera = "assets/images/camera.jpg";
    const headhone = "assets/images/headphone.jpg";
    const recent_product = [earphone, tshirt, laptop, hodie, camera, headhone];


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Dimonsion.v70,
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Delivey Location", style: TextStyle(fontSize: 18, color: Colors.black54),),
                      Row(
                        children: [
                          Text("Khilkhet, Dhaka", style: TextStyle(fontSize: 20, color: Colors.black),),
                          IconButton(onPressed: (){

                          }, icon: Icon(Icons.arrow_drop_down_outlined)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){

                      }, icon: Icon(Icons.shopping_cart)),
                      IconButton(onPressed: (){

                      }, icon: Icon(Icons.notifications)),
                    ],
                  ),
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white70,
                prefixIcon: Icon(Icons.search_rounded),
                hintText: "search here",
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5)
                ),
              ),),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [

                          SizedBox(height: Dimonsion.v30,),
                          VxSwiper.builder(
                            aspectRatio: 0.9,
                              autoPlay: true,
                              height: Dimonsion.v150,
                              enlargeCenterPage: true,
                              itemCount: banner.length,
                              itemBuilder: (context,index){
                                return Container(
                                  width: Dimonsion.w350,
                                  child: Image.asset(
                                    banner[index],
                                    fit: BoxFit.fitWidth,),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black12, width: 2)
                                  ),
                                );
                              }),
                          SizedBox(height: Dimonsion.v30,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,),
                      child: Text("Catagory", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: Dimonsion.v10,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide.none,
                                ),
                                onPressed: (){
                            }, child: SizedBox(
                              height: Dimonsion.v60,
                              width: Dimonsion.w60,
                              child: Column(
                                children: [
                                  Icon(Icons.category_outlined),
                                  //Image.asset("assets/images/catagory/apparel.png"),
                                  Text("Apprel"),
                                ],
                              ),
                            )),
                            SizedBox(width: Dimonsion.w5,),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.transparent,
                                  )
                                ),
                                onPressed: (){

                            }, child: SizedBox(
                              height: Dimonsion.v60,
                              width: Dimonsion.w60,
                              child: Column(
                                children: [
                                  Icon(Icons.school_rounded),
                                  //Image.asset("assets/images/catagory/apparel.png"),
                                  Text("School"),
                                ],
                              ),
                            )),
                            SizedBox(width: Dimonsion.w5,),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide.none,
                                ),
                                onPressed: (){

                            }, child: SizedBox(
                              height: Dimonsion.v60,
                              width: Dimonsion.w60,
                              child: Column(
                                children: [
                                  Icon(Icons.sports_soccer_outlined),
                                  //Image.asset("assets/images/catagory/apparel.png"),
                                  Text("Sports"),
                                ],
                              ),
                            )),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide.none,
                                ),
                                onPressed: (){

                            }, child: SizedBox(
                              height: Dimonsion.v60,
                              width: Dimonsion.w60+Dimonsion.w5,
                              child: Column(
                                children: [
                                  Icon(Icons.laptop_chromebook_sharp),
                                  //Image.asset("assets/images/catagory/apparel.png"),
                                  Text("Electronic"),
                                ],
                              ),
                            )),
                            SizedBox(width: Dimonsion.w5,),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide.none,
                                ),
                                onPressed: (){

                            }, child: SizedBox(
                              height: Dimonsion.v60,
                              width: Dimonsion.w60,
                              child: Column(
                                children: [
                                  Icon(Icons.more),
                                  //Image.asset("assets/images/catagory/apparel.png"),
                                  Text("More"),
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Recent Product"),
                          Row(
                            children: [
                              Text("Filter"),
                              IconButton(onPressed: (){

                              }, icon: Icon(Icons.filter_alt))
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Container(
                        height: Dimonsion.v600,
                        child: GridView.count(crossAxisCount: 2,
                        children: [
                          Container(
                            decoration:  BoxDecoration(
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: Dimonsion.v200/2.45,
                                    width: Dimonsion.w120+Dimonsion.w60,
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
                                        width: Dimonsion.w120+Dimonsion.w50,
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
                          ).onTap(() {
                            Get.to(()=> Product_details_1());
                          }),
                          Container(
                            decoration:  BoxDecoration(
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: Dimonsion.v200/2.45,
                                    width: Dimonsion.w120+Dimonsion.w60,
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
                                        width: Dimonsion.w120+Dimonsion.w50,
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
                          ).onTap(() {
                            Get.to(()=> Product_details_2());
                          }),
                          Container(
                            decoration:  BoxDecoration(
                            ),
                            child: Column(
                              children: [
                                Container(
                                    height: Dimonsion.v200/2.45,
                                    width: Dimonsion.w120+Dimonsion.w60,
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
                                        width: Dimonsion.w120+Dimonsion.w50,
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
                          ).onTap(() {
                            Get.to(()=> Product_details_3());
                          }),
                          Container(
                            decoration:  BoxDecoration(
                            ),
                            child: Column(
                              children: [
                                Container(
                                    height: Dimonsion.v200/2.45,
                                    width: Dimonsion.w120+Dimonsion.w60,
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
                                        width: Dimonsion.w120+Dimonsion.w50,
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
                          ).onTap(() {
                            Get.to(()=> Product_details_4());
                          }),
                          Container(
                            decoration:  BoxDecoration(
                            ),
                            child: Column(
                              children: [
                                Container(
                                    height: Dimonsion.v200/2.45,
                                    width: Dimonsion.w120+Dimonsion.w60,
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
                                        width: Dimonsion.w120+Dimonsion.w50,
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
                          ).onTap(() {
                            Get.to(()=> Product_details_5());
                          }),
                          Container(
                            decoration:  BoxDecoration(
                            ),
                            child: Column(
                              children: [
                                Container(
                                    height: Dimonsion.v200/2.45,
                                    width: Dimonsion.w120+Dimonsion.w60,
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
                                        width: Dimonsion.w120+Dimonsion.w50,
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
                          ).onTap(() {
                            Get.to(()=> Product_details_6());
                          }),
                        ],),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
