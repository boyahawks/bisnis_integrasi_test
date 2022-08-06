import 'dart:convert';

import 'package:bisnis_integrasi/model/user_model.dart';
import 'package:bisnis_integrasi/utils/local_storage.dart';

class AppData {

  static set tokenUser(String value) =>
      LocalStorage().saveToDisk(key: 'tokenUser', value: value);

  static String get tokenUser {
    if (LocalStorage().getFromDisk(key: 'tokenUser') != null) {
      return LocalStorage().getFromDisk(key: 'tokenUser');
    }
    return "";
  }


}
