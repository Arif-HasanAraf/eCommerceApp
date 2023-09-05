import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Widget/DimonsionSize.dart';
import '../../Widget/expendable_text.dart';


class Product_details_6 extends StatelessWidget {
  const Product_details_6({Key? key}) : super(key: key);

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
                height: Dimonsion.v600/2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/headphone.jpg"
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
                        Text(" \$ 60.10", style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: Dimonsion.v20,),
                    Text("Introduction"),
                    SizedBox(height: Dimonsion.v5,),
                    Expanded(
                        child: SingleChildScrollView(
                            child: ExpandableText(text: "Earbuds are discreet and convenient to use, but if you want to get the best wireless sound for the money, choose over-ear Bluetooth headphones.Although no single headphones set is a perfect match for everyone, the JBL Tour One M2 comes darn close. We love this pair’s customizable sound, stellar call clarity, and days-long battery life—plus, it includes some bonus features usually reserved  pricier pairs. ")))
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
