import 'package:ecommerceapp/Bottom_Navi_pages/history.dart';
import 'package:ecommerceapp/Controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Bottom_Navi_pages/accounts.dart';
import 'Bottom_Navi_pages/home.dart';
import 'Bottom_Navi_pages/whitelist.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    var controller = Get.put(HomeController());
    const home = 'Home' , whitelist = 'Whitelist', history = 'History', account = 'Accounts';

    var NaviBarItem = [
      BottomNavigationBarItem(icon: Icon(Icons.home_filled, size: 30,),label: home),
      BottomNavigationBarItem(icon: Icon(Icons.add_card_sharp, size: 30,), label: whitelist),
      BottomNavigationBarItem(icon: Icon(Icons.history, size: 30,),label: history),
      BottomNavigationBarItem(icon: Icon(Icons.person, size: 30,),label: account),

    ];

    var NaviBody = [
      Home(),
      Whitelist(tittle: 'Whitelist',),
      History(),
      Account(),

    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: NaviBody.elementAt(controller.CurrentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
           currentIndex: controller.CurrentNavIndex.value,
          selectedItemColor: Colors.greenAccent,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500,) ,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: NaviBarItem,
         onTap: (value){
             controller.CurrentNavIndex.value = value;
         },
         ),
      ),
    );
  }
}
