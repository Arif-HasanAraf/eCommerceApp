import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Widget/DimonsionSize.dart';
import '../../Widget/expendable_text.dart';


class Product_details_3 extends StatelessWidget {
  const Product_details_3({Key? key}) : super(key: key);

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
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/laptop.png"
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
                        Text(" \$ 999.90", style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: Dimonsion.v20,),
                    Text("Introduction"),
                    SizedBox(height: Dimonsion.v5,),
                    Expanded(
                        child: SingleChildScrollView(
                            child: ExpandableText(text: "t is strongly suggested that each student own the recommended laptop computer, accessories, and base software listed below. The mobility of owning a laptop is essential as much of the work is collaborative and happens in a variety of locations. Please note that the AAP IT Solutions service team is available to provide free support for student-owned laptops.")))
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimonsion.v40*2,
        padding: EdgeInsets.only(left: Dimonsion.l20, right: Dimonsion.r20, top: Dimonsion.t10*2, bottom:Dimonsion.t10*2),
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
