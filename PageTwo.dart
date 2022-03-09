import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/pageOne_controller.dart';
import './PageOne.dart';

class PageTwo extends StatelessWidget {
  PageOneC pageOneC = Get
      .find(); //menggunakan Get.find() lebih mudah karena tidak memerlukan dependency lagi //dan dengan menggunakan ini bisa lebih leluasa meletakkan Get.put(dep) di page manapun

  // final pageOneC = Get.put(PageOneC()); //memanngil sebuah variabel dengan Get.put(dependency)


  /*CONSTRAKTOR */
  // PageTwo(
  //   this.dataPageTwo
  // );

  // PageOne dataPageTwo;
//-------------------------------------------------------
  // Map<String, dynamic> dataPageTwo; //mengambil data dengan mengulangi mapping dari page satu

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${pageOneC.data2['Nama']} - ${pageOneC.data['Semester']} - ${pageOneC.data['Umur']} Tahun",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
