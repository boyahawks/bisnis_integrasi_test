import 'package:bisnis_integrasi/controller/dashboard_controller.dart';
import 'package:bisnis_integrasi/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardinState();
}
class _DashboardinState extends State<Dashboard> {

  _DashboardinState createState() => _DashboardinState();

  final controller = Get.put(DashboardController());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: Utility.defaultMarginPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Utility.defaultMarginPadding,),
              Row(
                children: [
                  Expanded(
                      flex: 35,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 20,),
                        ),
                      )),
                  Expanded(
                      flex: 65,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("Pengiriman", style: TextStyle(fontSize: Utility.sizeTitle),),
                      )
                  )
                ],
              ),
              SizedBox(height: Utility.defaultMarginPadding,),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        border: Border.all(width: 1.0, color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextField(
                        controller: controller.cari.value,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Cari Pengiriman"
                        ),
                        style: TextStyle(
                            fontSize: 14.0, height: 1.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment : MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                          ),
                          child: Center(
                            child: Text("Cari", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: Utility.defaultMarginPadding,),
              Flexible(
                flex: 2,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 45,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: Utility.defaultMarginPadding),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 10,
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                      ),
                                      Expanded(flex: 90, child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text("Jakarta (JKT)"),
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Text("-", style: TextStyle(fontSize: 20),),
                              ),
                              Expanded(
                                flex: 45,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: Utility.defaultMarginPadding),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 10,
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.yellow,
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                      ),
                                      Expanded(flex: 90, child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text("Semarang (SMG)"),
                                      ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: Utility.defaultMarginPadding),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Status :"),
                                    Text("Dalam Perjalanan",
                                      style: TextStyle(color: Colors.blue),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text("Tanggal Pengiriman :"),
                                    Text("12/09/2021")
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text("Jenis Truck :"),
                                    Text("12/09/2021")
                                  ],
                                ),
                                SizedBox(height: Utility.defaultMarginPadding,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        controller.detilView();
                                      },
                                      child: Container(
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15)),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: Text("Detail",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: Utility.defaultMarginPadding,)
                              ],
                            ),
                          )
                        ],
                      ),

                    );
                  }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
