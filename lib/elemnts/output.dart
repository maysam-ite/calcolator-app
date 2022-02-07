import 'package:flutter/material.dart';
import 'package:get/get.dart';



class outputController extends GetxController{
  String content = '';
  String subContent = '';


  void press(String value) {
    content += value;
    update();
  }



}


class outputWidget extends StatelessWidget{
  final outputController controller;

  outputWidget(this.controller);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<outputController>(
        init: this.controller,
        builder: (controller){
          return Container(
            padding: EdgeInsets.all(size.width * 0.025),
            child: Column(
              children: [
                outputText(controller.subContent, 1),
                outputText(controller.content, 2),
              ],
            ),
          );
        },

    );


  }




}

class outputText extends StatelessWidget {
  final String text;
  final int flex;


  outputText(this.text, this.flex);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: flex,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(size.width*0.02),
        child: FittedBox(
          alignment: Alignment.centerLeft,
            child: Text(text),
        ),
      ),
    );
  }
}
