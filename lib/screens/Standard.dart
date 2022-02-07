// ignore_for_file: file_names

import 'package:calculator/elemnts/Standard.dart';
import 'package:calculator/elemnts/output.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StandardScreen extends StatelessWidget {

  final outputController controller = Get.put(outputController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: outputWidget(controller),

        ),
        Expanded(
        child: Row(
          children: [
            StandardNumber(
                contentText: '=',
                onTap: (){
                  controller.press('=');
                }
            ),
            StandardNumber(
                contentText: 'DEL',
                onTap: (){
                  controller.press('DEL');
                }
            )
          ],
        ),
      ),
        Expanded(
          child: Row(
            children: [
              StandardNumber(
                  contentText: '7',
                  onTap: () {
                    controller.press('7');
                  }),
              StandardNumber(
                  contentText: '8',
                  onTap: (){
                    controller.press('8');
                  }
              ),
              StandardNumber(
                  contentText: '9',
                  onTap: (){
                    controller.press('9');
                  }
              ),
              StandardNumber(
                  contentText: '+',
                  onTap: (){
                    controller.press('+');
                  }
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              StandardNumber(
                  contentText: '4',
                  onTap: () {
                    controller.press('4');
                  }),
              StandardNumber(
                  contentText: '5',
                  onTap: (){
                    controller.press('5');
                  }
              ),
              StandardNumber(
                  contentText: '6',
                  onTap: (){
                    controller.press('6');
                  }
              ),
              StandardNumber(
                  contentText: '-',
                  onTap: (){
                    controller.press('-');
                  }
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              StandardNumber(
                  contentText: '1',
                  onTap: () {
                    controller.press('1');
                  }),
              StandardNumber(
                  contentText: '2',
                  onTap: (){
                    controller.press('2');
                  }
              ),
              StandardNumber(
                  contentText: '3',
                  onTap: (){
                    controller.press('3');
                  }
              ),
              StandardNumber(
                  contentText: '×',
                  onTap: (){
                    controller.press('×');
                  }
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              StandardNumber(
                  contentText: '.',
                  onTap: () {
                    controller.press('.');
                  }),
              StandardNumber(
                  contentText: '0',
                  onTap: (){
                    controller.press('0');
                  }
              ),
              StandardNumber(
                  contentText: 'C',
                  onTap: (){
                    controller.press('C');
                  }
              ),
              StandardNumber(
                  contentText: '÷',
                  onTap: (){
                    controller.press('÷');
                  }
              )
            ],
          ),
        ),

      ],
    );
  }
}
