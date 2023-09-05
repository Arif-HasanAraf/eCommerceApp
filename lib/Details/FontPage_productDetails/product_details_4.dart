import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Widget/DimonsionSize.dart';
import '../../Widget/expendable_text.dart';


class Product_details_4 extends StatelessWidget {
  const Product_details_4({Key? key}) : super(key: key);

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
                        "assets/images/hodie.jpg"
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
                        Text(" \$ 30.50", style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: Dimonsion.v20,),
                    Text("Introduction"),
                    SizedBox(height: Dimonsion.v5,),
                    Expanded(
                        child: SingleChildScrollView(
                            child: ExpandableText(text: "A hoodie is a heavy uppergarment with a hood. The garment includes large front pockets, a hood, and usuallycontains a drawstring to adjust the size of the hood. Sometimes, the garment isalso tailored with a zip. The history of the hood dates back to 30s, whenlaborers in New York used it to protect themselves from the chilly weather. Asthey cannot spend much on their clothing, they were provided with good qualityapparels which would last for a long time. Thus hooded sweatshirts became theirbest option. In the span of time, with new fads zooming in the market, theywere used by all classes. During the 70s, Sylvester Stallone seen in a hoodedsweatshirt as ' Rocky' made the garment a 'fashion icon'. Later on, designers tailoredtheir collections based on this pattern and gave popularity to the clothing.")))
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
