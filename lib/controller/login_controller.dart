import 'package:bisnis_integrasi/screen/dashboard.dart';
import 'package:bisnis_integrasi/utils/api.dart';
import 'package:bisnis_integrasi/utils/data_aplikasi.dart';
import 'package:bisnis_integrasi/utils/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  var kodedriver = TextEditingController().obs;
  var password = TextEditingController().obs;
  var showpassword = false.obs;

  void postLogin() async {
    WidgetUtility.showLoadingIndicator(Get.context!);
    var formData = {
      // "password" : password.value.text,
      // "kode_driver": kodedriver.value.text
      "password" : 12345678,
      "kode_driver": "DR220400122"
    };
    Future<dynamic>  getValue = Api.connectionApi("post", formData, "${Api.postLogin}", "");
    getValue.then((dynamic res) {
      AppData.tokenUser = res.data['token'];
      Navigator.pop(Get.context!, true);
      WidgetUtility.showToast("Berhasil login");
      Get.offAll(Dashboard());
    });

  }

}
