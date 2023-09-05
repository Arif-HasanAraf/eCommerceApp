import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Widget/DimonsionSize.dart';
import '../../Widget/expendable_text.dart';


class Product_details_2 extends StatelessWidget {
  const Product_details_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimonsion.v200*1.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/tshirt.jpg"
                    ),
                  ),
                ),
              )),
          Positioned(
              top: Dimonsion.t45,
              left: Dimonsion.l20,
              right: Dimonsion.r20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Icon(CupertinoIcons.shopping_cart)
                ],

              )),
          Positioned(
              left: 0,
              right: 0,
              top: Dimonsion.t200*1.5,
              bottom: 0,
              child:
              Container(
                padding: EdgeInsets.only(left: Dimonsion.l20/2, right: Dimonsion.r20, top: Dimonsion.t10*2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                ),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Avilable product color", style: TextStyle(fontSize: 18),),
                        SizedBox(height: Dimonsion.v10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: Dimonsion.v50,
                              width: Dimonsion.w50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black,
                                border: Border.all(color: Colors.red)

                              ),
                            ),
                            SizedBox(width: Dimonsion.w10,),
                            Container(
                              height: Dimonsion.v50,
                              width: Dimonsion.w50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.yellow,
                                  border: Border.all(color: Colors.red)

                              ),
                            ),
                            SizedBox(width: Dimonsion.w10,),
                            Container(
                              height: Dimonsion.v50,
                              width: Dimonsion.w50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white12,
                                  border: Border.all(color: Colors.red)

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Dimonsion.v10,),
                        Text(" \$ 10.00", style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: Dimonsion.v20,),
                    Text("Introduction"),
                    SizedBox(height: Dimonsion.v5,),
                    Expanded(
                        child: SingleChildScrollView(
                            child: ExpandableText(text: "ery few people in the world can say they don’t own a single t-shirt. It is one of those core items that is worn by men and women alike and serves as a blank canvas both for the wearer and the designer. As wearers, we love them for their versatility, comfort, and (usually) low price point. Put yourself in the shoes (or the t-shirt) of your customer for a second: there is nothing like your favorite t-shirt, that makes you feel comfortable and secure, particularly on those days when just picking an outfit feels daunting. Ideally, you'd want to be the creator of  tee that people keep coming back to. ")))
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimonsion.v40*2,
        padding: EdgeInsets.only(left: Dimonsion.l20, right: Dimonsion.r20, top: Dimonsion.t10*2, bottom: Dimonsion.t10*2),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimonsion.t10, bottom: Dimonsion.t10, left: Dimonsion.l20/2, right: Dimonsion.r20/2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,),
                  SizedBox(width: Dimonsion.w5/2,),
                  Text("0"),
                  SizedBox(width: Dimonsion.w5/2,),
                  Icon(Icons.add),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimonsion.t10, bottom: Dimonsion.t10, left: Dimonsion.l20/2, right: Dimonsion.r20/2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Text("Add to Card",),
            ),
          ],
        ),
      ),

    );
  }
}
