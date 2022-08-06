import 'package:bisnis_integrasi/controller/login_controller.dart';
import 'package:bisnis_integrasi/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {

  final controller = Get.put(LoginController());

  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Obx(() => SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  flex: 85,
                  child: view1(),
                ),
                Expanded(
                  flex: 15,
                  child: view2(),
                )
              ],
            ),
          ),
          ),
        )
    )
    ;
  }

  Widget view1() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: Utility.sizeText, bottom: Utility.sizeText),
              child: Row(
                  children : [
                    Expanded(
                      flex: 35,
                      child: Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Utility.defaultRadiusCircular),
                              topRight: Radius.circular(Utility.defaultRadiusCircular),
                              bottomLeft: Radius.circular(Utility.defaultRadiusCircular),
                              bottomRight: Radius.circular(Utility.defaultRadiusCircular),
                            )
                        ),
                        child: IconButton(
                          onPressed: (){},
                          color: Colors.white,
                          icon: Icon(Icons.arrow_back_ios_new_outlined, size: Utility.sizeTitle,),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 65,
                        child: Text("Masuk Akun", style: TextStyle(fontSize: Utility.sizeTitle, fontWeight: FontWeight.bold))
                    )
                  ]
              ),
            ),
          ),
          SizedBox(height: Utility.defaultMarginPadding,),
          Padding(
            padding: EdgeInsets.only(left: Utility.defaultMarginPadding, right: Utility.defaultMarginPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email/No.Handphone*"),
                SizedBox(height: 8,),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: TextField(
                      controller: controller.kodedriver.value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Tulis Email/No.Handphone",
                        prefixIcon:
                        const Icon(Icons.supervised_user_circle_outlined),
                      ),
                      style: TextStyle(
                          fontSize: Utility.sizeText, height: 2.0, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: Utility.defaultMarginPadding,),
                Text("Kata Sandi*"),
                SizedBox(height: 8,),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: TextField(
                      obscureText: !this.controller.showpassword.value,
                      controller: controller.password.value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Isi kata sandi anda",
                          prefixIcon:
                          const Icon(Icons.key),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: this.controller.showpassword.value
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              this.controller.showpassword.value =
                              !this.controller.showpassword.value;
                            },
                          )),

                      style: TextStyle(
                          fontSize: Utility.sizeText, height: 2.0, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: Utility.defaultMarginPadding,),
                Container(
                  alignment: Alignment.centerRight,
                  child: InkWell(onTap: (){},
                      child: Text("Lupa Kata Sandi ?",
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                  ),
                ),
                SizedBox(height: Utility.defaultMarginPadding,),
                TextButton(
                    onPressed: (){
                      controller.postLogin();
                    },
                    style : ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape :  MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(Utility.defaultRadiusCircular),
                            ))
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text("Masuk", style: TextStyle(color: Colors.white),),
                      ),
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget view2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Belum punya akun ?", style: TextStyle(fontSize: Utility.sizeText),),
        Text(" Daftar Sekarang", style: TextStyle(fontSize: Utility.sizeText, color: Colors.blue),)
      ],
    );
  }
}
