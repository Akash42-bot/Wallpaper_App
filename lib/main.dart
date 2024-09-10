import 'package:api/first/home.dart';
import 'package:api/wallpaper/wallpaperhome.dart';
import 'package:flutter/material.dart';

import 'handmodel_from_map/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Wallpaperhome(),
      ),
    );
  }
}

