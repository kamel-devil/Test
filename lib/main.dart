import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/changeColor_controller.dart';
import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<ChangeColor>(
        create: (context) => ChangeColor(),

    child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  HomePage(),
    ));
  }
}


