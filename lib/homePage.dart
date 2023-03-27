import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/changeColor_controller.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<ChangeColor>(context);

    return  SafeArea(child: Scaffold(
      body: InkWell(
         onTap: (){
           int num =  Random().nextInt(Colors.primaries.length);
           int numT =  Random().nextInt(Colors.primaries.length);
           controller.changeColor(num,numT);
         },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          color: controller.color,
          child: Text('Hello there',style: TextStyle(color: controller.colorT,fontWeight: FontWeight.bold,fontSize: 32),),
        ),
      ),
    ));
  }
}
