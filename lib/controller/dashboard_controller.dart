import 'package:bisnis_integrasi/screen/detil_pengiriman.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class DashboardController extends GetxController {

  var cari = TextEditingController().obs;

  void initializeData() async{

  }

  void detilView() {
    Get.offAll(DetilPengiriman());
  }


}
