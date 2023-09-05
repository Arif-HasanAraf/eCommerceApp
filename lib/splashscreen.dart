import 'package:ecommerceapp/Authentcation/login.dart';
import 'package:ecommerceapp/HomeScreen.dart';
import 'package:ecommerceapp/Widget/DimonsionSize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ChangeScreen(){
    Future.delayed(Duration(seconds: 5),(){
      Get.to(()=>LoginPage());
    });
  }

  @override
  void initState(){
    ChangeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: Dimonsion.t200,
              left: Dimonsion.l130+10,
              child: Container(
                height: Dimonsion.v150,
                width: Dimonsion.w100+Dimonsion.w50,
                child: Image(
                  image: AssetImage("assets/images/tiger.png"),
                ),
              ),
            ),
            Positioned(
              top: Dimonsion.t360,
                left: Dimonsion.l100+10,
                child: Column(
                  children: [
                    Text("eCo Site", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white, fontStyle: FontStyle.italic),),
                    Text("All you want is here!", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white),),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
