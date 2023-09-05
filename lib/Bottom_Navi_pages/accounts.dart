import 'package:ecommerceapp/Widget/DimonsionSize.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Details/FontPage_productDetails/product_details_1.dart';

class Account extends StatelessWidget {

  static const card = "My Card", notify = "My notification", massage = "Delivery Massage", address = "My Address", order = "My Order", point = "Earn point";
  static const ProfileButton =[card, notify, massage,address, order, point ];
  static const ProfileIcon = [Icons.add_card, Icons.notification_important, Icons.message, Icons.location_on_outlined, Icons.shopping_cart, Icons.control_point_duplicate];
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/catagory/myimg.png", width: Dimonsion.w100, fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                    SizedBox(width: Dimonsion.w10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Arif Hasan", style: TextStyle(fontSize: 20),),
                        Text("arifhasan1595@gmail.com", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    SizedBox(width: Dimonsion.w15+7,),
                    OutlinedButton(
                        style:OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.white
                          )
                        ),
                        onPressed: (){

                    }, child: Text("LogOut",style: TextStyle(color: Colors.white),))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: Dimonsion.screenWidth/2-60),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){

                      }, icon: Icon(Icons.edit, size: 30,color: Colors.white,)),
                      IconButton(onPressed: (){

                      }, icon: Icon(Icons.local_atm, size: 30,color: Colors.white,)),
                    ],
                  ),
                ),
                SizedBox(height: Dimonsion.v30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: Dimonsion.v70,
                      width: Dimonsion.w120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: Dimonsion.v20,),
                            Text("00"),
                            Text("In your card"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: Dimonsion.v70,
                      width: Dimonsion.w120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: Dimonsion.v20,),
                            Text("01"),
                            Text("Is in your list"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: Dimonsion.v70,
                      width: Dimonsion.w120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: Dimonsion.v20,),
                            Text("04"),
                            Text("You Orderded"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Dimonsion.v20,),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: AlwaysScrollableScrollPhysics(),
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: ProfileButton.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Divider(
                          color: Colors.lightGreenAccent,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index){
                        return ListTile(
                          leading: Icon(ProfileIcon[index],weight: Dimonsion.w20,),
                          title:"${ProfileButton[index]}".text.make(),
                        );

                        },
                    ).box.white.rounded.padding(EdgeInsets.symmetric(horizontal: 20)).shadowSm.make(),
                  ),
                )
              ],

            ),
        ),
      ),
    );
  }
}
