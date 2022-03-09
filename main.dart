import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/PageOne.dart';

void main
()
{
  runApp(app());
}

class app extends StatelessWidget {
  const app({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageOne(),
    );
  }
}