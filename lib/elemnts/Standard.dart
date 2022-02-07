// ignore_for_file: file_names
import 'package:flutter/material.dart';

class StandardNumber extends StatelessWidget {
  final String contentText;
  final GestureTapCallback? onTap;

  StandardNumber({required this.contentText,this.onTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: GestureDetector(
        child: Container(
          child: Center(
            child: Text(contentText,style: TextStyle(
              fontSize: 18
            ),),
          ),
          width: double.infinity,
          height:double.infinity,
          margin: EdgeInsets.all(size.width * 0.01),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.width * 0.035),
            color: Theme.of(context).primaryColor,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}

