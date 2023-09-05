import 'package:ecommerceapp/Services/whitelist_extands/whitelist_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class productController extends GetxController{
  var subwhite = [];
  getsubwhitelist(tittle) async{
    var data = await rootBundle.loadString("lib/Services/Whitelist.json");
    var decoded = whitelistFromJson(data as String);
    var i = decoded.whitelist.where((element) => element.name == tittle).toList();

    for(var j in i[0].subwhitelist){
      subwhite.add(j);

    }
  }


}