import 'package:ecommerceapp/Controller/ExpandedText.dart';
import 'package:ecommerceapp/Controller/productController.dart';
import 'package:ecommerceapp/Widget/DimonsionSize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Details/whitelist_details.dart';

class Whitelist extends StatelessWidget {
  const Whitelist({Key? key, required String tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(productController()); 

    const accossories = "assets/images/earphone.jpg";
    const cloth = "assets/images/tshirt.jpg";
    const device = "assets/images/laptop.png";
    const winter_dress = "assets/images/hodie.jpg";
    const leans = "assets/images/camera.jpg";
    const geometry = "assets/images/catagory/geometry.png";
    const sports = "assets/images/catagory/sports.png";
    const toys = "assets/images/catagory/toys.jpg";
    const electronic = "assets/images/catagory/electronic.jpg";
    const recent_product = [accossories, cloth, device,  winter_dress, leans, geometry, sports,toys, electronic];
    const product_list = ["Accossories", "Cloth", "device", "Winter dress","leans","Geometry", "Sports", "Toys", "Electronics"];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 200),
              itemBuilder: (context,index){
            return Column(
              children: [
                Image.asset(recent_product[index], height: Dimonsion.v60*2, width: Dimonsion.w100+Dimonsion.w50, fit: BoxFit.cover,),
                HeightBox(10), 
                Text(product_list[index]),
              ],
            ).box.orange50.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
              controller.getsubwhitelist(product_list[index]);
              Get.to(()=> Whitelist_details( title: product_list[index],));
            });
          }),
        ),
      ),
    );
  }
}
