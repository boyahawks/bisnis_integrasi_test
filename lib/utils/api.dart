
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio;

class Api {

  static var basicUrl = "https://dportv2.development-big.com/api_v1/";
  static var postLogin = basicUrl + "login/loginDriver";
  static var postListPengiriman = basicUrl + "Driver/listBursaPengirimanDriver";

  static Future connectionApi(String typeConnect, dynamic valFormData,String url, String token) async {
    try {
      if(typeConnect == "post"){
        var formData = dio.FormData.fromMap(valFormData);
        var response = await dio.Dio().post(url,
            data: formData,
            options: Options( headers:
              {
                "Authorization": token,
                "Connection": "keep-alive",
                "Content-Type": "multipart/form-data;",
              },
            )
        );
        // print(response.headers);
        return response;
      }else{
        var response = await dio.Dio().get(url,
            options: Options( headers:
              {
                "Authorization": token,
                "Connection": "keep-alive",
                "Content-Type": "multipart/form-data;",
              },
            )
        );
        return response;
      }
    } on Exception catch (e) {
      print(e);
    }
  }

}