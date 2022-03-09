import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/pageOne_controller.dart';
import './PageTwo.dart';

class PageOne extends StatelessWidget {

    final pageOneC = Get.lazyPut(() => PageOneC()); //lazyPut bisa ditaruh dimanapun dan pemanggilannya bisa metode getPut ataupun GetFind

  // final pageOneC = Get.put(PageOneC());
  
  /*HANYA UNTUK PEMANGGILAN DENGAN MENGGUNANKAN MAPPING KEMBALI DIPAGE SELANJUTNYA(DUA) */
  // Map<String, dynamic> data = {
  //   "Nama": "Wafiq",
  //   "Semester": 4,
  //   "Umur": 21,
  // };
  // Map<String, dynamic> data2 = {
  //   "Nama": "Muhaz",
  //   "Semester": 4,
  //   "Umur": 21,
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              // "${pageOneC.data['Nama']} - ${pageOneC.data['Semester']} - ${pageOneC.data['Umur']} Tahun",
              '',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  PageTwo(), //PageOne()p //pemanggilan dengan tidak menggunakan class yang sama
                    // PageTwo(data),
                  ),
                );
              },
              child: Text("Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}
