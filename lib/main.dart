import 'package:calculator/screens/Scientific.dart';
import 'package:calculator/screens/Standard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    print('build');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData.light().copyWith(
        primaryColor:const Color.fromRGBO(80, 160, 250, 1),
        scaffoldBackgroundColor:const Color(0xFFF8F8F8)
      ),
      darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:const Color.fromRGBO(65, 65, 65, 1)
      ),
      home: Scaffold(
        body: SafeArea(
          child: OrientationBuilder(
            builder: (context,orientation){
              if(orientation == Orientation.portrait)
                return StandardScreen();
              return ScientificScreen();
            },
          ),

        ),
      ),

    );
  }
}
