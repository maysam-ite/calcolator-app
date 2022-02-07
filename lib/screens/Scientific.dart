// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ScientificScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Colors.grey,
      body:SafeArea(
        child:Center(
          child:Text('Scientific Screen')
        ),
      ),
    );
  }

}