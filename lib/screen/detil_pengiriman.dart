import 'package:bisnis_integrasi/controller/dashboard_controller.dart';
import 'package:bisnis_integrasi/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetilPengiriman extends StatelessWidget {

  final controller = Get.put(DashboardController());

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
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
            Container(
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.only(left: Utility.defaultMarginPadding, right: Utility.defaultMarginPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 40,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  image: NetworkImage("https://asset.kompas.com/crops/aL8BEuHHZdMaulV0gokYqhdHSQ4=/88x144:1186x876/780x390/data/photo/2021/11/16/619292f1d0773.jpeg"),
                                )),
                          ),
                          SizedBox(height: 5,),
                          Text("Detail Kendaraan")
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 60,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("#974956"),
                            SizedBox(height: 5,),
                            SizedBox(
                              height: 20,
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
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text("Jakarta (JKT)"),
                                  ))
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            SizedBox(
                              height: 20,
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
                            SizedBox(height: 5),
                            Text("Tanggal Pengiriman :"),
                            SizedBox(height: 5),
                            Text("12/09/2021"),
                            SizedBox(height: 5),
                            Text("Term of Payments :"),
                            SizedBox(height: 5),
                            Text("Cash in Advance"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: Utility.defaultMarginPadding,),
            Container(
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.all(Utility.defaultMarginPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 30,
                          child: Text("Jenis Kendaraan", textAlign : TextAlign.center, style: TextStyle(fontSize: 12),),
                        ),
                        Expanded(
                          flex: 20,
                          child: Text("Muatan", textAlign : TextAlign.center, style: TextStyle(fontSize: 12),),
                        ),
                        Expanded(
                          flex: 30,
                          child: Text("Tipe Pengiriman", textAlign : TextAlign.center, style: TextStyle(fontSize: 12),),
                        ),
                        Expanded(
                          flex: 20,
                          child: Text("Status", textAlign : TextAlign.center, style: TextStyle(fontSize: 12),),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 30,
                          child: Row(
                            children: [
                              Icon(Icons.directions_bus, size: 20,),
                              Container(
                                width: 70,
                                padding: EdgeInsets.only(left: 3),
                                child: Text("Box Reefer", style: TextStyle(fontSize: 12),),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 20,
                          child: Row(
                            children: [
                              Icon(Icons.shopify_rounded, size: 20,),
                              Container(
                                width: 40,
                                padding: EdgeInsets.only(left: 3),
                                child: Text("15 Ton", style: TextStyle(fontSize: 12),),
                              )
                            ],
                          )
                        ),
                        Expanded(
                          flex: 30,
                          child: Row(
                            children: [
                              Icon(Icons.my_library_books_outlined, size: 20,),
                              Container(
                                width: 70,
                                padding: EdgeInsets.only(left: 3),
                                child: Text("Regular", style: TextStyle(fontSize: 12),),
                              )
                            ],
                          )
                        ),
                        Expanded(
                          flex: 20,
                          child: Text("Selesai", textAlign: TextAlign.center, style: TextStyle(fontSize: 12),)
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Utility.defaultMarginPadding,),
            Padding(
              padding: EdgeInsets.only(left: Utility.defaultMarginPadding),
              child: Text("Alamat Pengirim"),
            ),
            Container(
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.all(Utility.defaultMarginPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jl. Kusuma timur 1c block f5 no.10  Bekasi Jawa barat, 1711"),
                    SizedBox(height: 5,),
                    SizedBox(
                      height: 30,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 15,
                            child: Text("Nama"),
                          ),
                          Expanded(
                            flex: 85,
                            child: Text(": Anto Sumanto"),
                          )
                        ]

                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                          children: [
                            Expanded(
                              flex: 15,
                              child: Text("Kontak"),
                            ),
                            Expanded(
                              flex: 85,
                              child: Text(": 082246965784"),
                            )
                          ]

                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: Utility.defaultMarginPadding,),
            Padding(
              padding: EdgeInsets.only(left: Utility.defaultMarginPadding),
              child: Text("Alamat Penerima"),
            ),
            Container(
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.all(Utility.defaultMarginPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jl. Kusuma timur 1c block f5 no.10  Bekasi Jawa barat, 1711"),
                    SizedBox(height: 5,),
                    SizedBox(
                      height: 30,
                      child: Row(
                          children: [
                            Expanded(
                              flex: 15,
                              child: Text("Nama"),
                            ),
                            Expanded(
                              flex: 85,
                              child: Text(": Anto Sumanto"),
                            )
                          ]

                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                          children: [
                            Expanded(
                              flex: 15,
                              child: Text("Kontak"),
                            ),
                            Expanded(
                              flex: 85,
                              child: Text(": 082246965784"),
                            )
                          ]

                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }


}